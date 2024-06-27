package com.example.connect;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseAuthInvalidCredentialsException;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.GoogleAuthProvider;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthOptions;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.concurrent.TimeUnit;

public class Authenticate extends AppCompatActivity {

    private EditText number;
    private EditText verificationCodeEditText;
    private Button getOtp;
    LinearLayout googleSign,otp,ver;
    TextView usePhone;


    private Button verifyButton;

    private AlertDialog progressDialog;



    int RC_SIGN_IN=20;

    GoogleSignInClient gsc;
    private FirebaseAuth mAuth;
    private PhoneAuthProvider.OnVerificationStateChangedCallbacks mCallbacks;
    private String mVerificationId;

    private SharedPreferences sharedPreferences;
    String phoneNumber;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_authenticate);

        number = findViewById(R.id.number);
        verificationCodeEditText = findViewById(R.id.verificationCode);
        getOtp = findViewById(R.id.getOtp);
        googleSign=findViewById(R.id.googleSign);
        usePhone=findViewById(R.id.usePhone);

        verifyButton = findViewById(R.id.verifyButton);

        verificationCodeEditText.setVisibility(View.GONE);
        verifyButton.setVisibility(View.GONE);
        mAuth = FirebaseAuth.getInstance();
        sharedPreferences = getSharedPreferences("user", MODE_PRIVATE);

        Boolean isLogged=sharedPreferences.getBoolean("flag",false);

        if (isLogged){

            Intent intent=new Intent(getApplicationContext(),frameMain.class);
            startActivity(intent);
            finish();
        }
        GoogleSignInOptions gso=new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN)
                .requestIdToken(getString(R.string.default_web_client_id))
                .requestEmail().build();


        gsc=GoogleSignIn.getClient(this,gso);


        googleSign.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                signIn();


            }
        });




        usePhone.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                googleSign.setVisibility(View.GONE);
                usePhone.setVisibility(View.GONE);
                number.setVisibility(View.VISIBLE);
                getOtp.setVisibility(View.VISIBLE);



            }
        });


        mCallbacks = new PhoneAuthProvider.OnVerificationStateChangedCallbacks() {
            @Override
            public void onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {
                // This method will be invoked when verification is completed automatically
                // For example, in case of instant verification, where the code is directly
                // sent to the phone number without user interaction.
                // You can proceed with signing in the user here or save the credential for later use.
                progressDialog.dismiss();
                signInWithPhoneAuthCredential(phoneAuthCredential);
            }

            @Override
            public void onVerificationFailed(FirebaseException e) {
                // This method will be invoked if verification fails.
                // Handle the error and display an appropriate message to the user.
                if (e instanceof FirebaseAuthInvalidCredentialsException) {

                    progressDialog.dismiss();
                    Toast.makeText(Authenticate.this, "Invalid phone number.", Toast.LENGTH_SHORT).show();
                } else {

                    progressDialog.dismiss();
                    // Other error
                    Toast.makeText(Authenticate.this, "Verification failed. Please try again later.", Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onCodeSent(String verificationId, PhoneAuthProvider.ForceResendingToken forceResendingToken) {
                // The SMS verification code has been sent to the provided phone number.
                // Save the verification ID and the token so we can use them later.
                mVerificationId = verificationId;

                number.setVisibility(View.GONE);
                getOtp.setVisibility(View.GONE);
                // Hide the "Enter Phone Number" UI and show the OTP EditText UI
                verificationCodeEditText.setVisibility(View.VISIBLE);
                verifyButton.setVisibility(View.VISIBLE);
                progressDialog.dismiss();
            }
        };

        getOtp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                phoneNumber = number.getText().toString();
                initiateOtp(phoneNumber);


            }
        });

        verifyButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String verificationCode = verificationCodeEditText.getText().toString();
                verifyCode(verificationCode);

            }
        });
    }

    private void initiateOtp(String phoneNumber) {


        String countryCode = "+91";
        String fullPhone = countryCode + phoneNumber;
        PhoneAuthOptions options =
                PhoneAuthOptions.newBuilder(mAuth)
                        .setPhoneNumber(fullPhone)       // Phone number to verify
                        .setTimeout(60L, TimeUnit.SECONDS) // Timeout and unit
                        .setActivity(this)                 // (optional) Activity for callback binding
                        // If no activity is passed, reCAPTCHA verification cannot be used.
                        .setCallbacks(mCallbacks)          // OnVerificationStateChangedCallbacks
                        .build();
        PhoneAuthProvider.verifyPhoneNumber(options);
    }

    private void verifyCode(String verificationCode) {
        PhoneAuthCredential credential = PhoneAuthProvider.getCredential(mVerificationId, verificationCode);
        signInWithPhoneAuthCredential(credential);

    }

    private void signInWithPhoneAuthCredential(PhoneAuthCredential credential) {
        mAuth.signInWithCredential(credential)
                .addOnCompleteListener(this, task -> {
                    if (task.isSuccessful()) {

                        // Sign in success
                        Toast.makeText(Authenticate.this, "Verification successful.", Toast.LENGTH_SHORT).show();

                        // Retrieve the authenticated user's UID
                        String uid = mAuth.getCurrentUser().getUid();



                        // Save the UID in SharedPreferences or any other persistent storage to remember the login state



                        // Check if the user is already registered in the Realtime Database
                        DatabaseReference usersRef = FirebaseDatabase.getInstance().getReference().child("users");
                        usersRef.child(uid).addListenerForSingleValueEvent(new ValueEventListener() {
                            @Override
                            public void onDataChange(DataSnapshot dataSnapshot) {
                                if (dataSnapshot.exists()) {
                                    // User is registered, directly go to the main screen
                                    Intent intent = new Intent(Authenticate.this, frameMain.class);
                                    SharedPreferences pre=getSharedPreferences("user",MODE_PRIVATE);
                                    SharedPreferences.Editor editor= pre.edit();
                                    sharedPreferences.edit().putString("uid", uid).apply();

                                    editor.putBoolean("flag",true);
                                    editor.apply();
                                    startActivity(intent);
                                    finish();
                                } else {
                                    // User is not registered, go to the registration screen
                                    Intent intent = new Intent(Authenticate.this, Register.class);
                                    startActivity(intent);
                                    sharedPreferences.edit().putString("uid", uid).apply();


                                }
                            }

                            @Override
                            public void onCancelled(DatabaseError databaseError) {
                                // Handle any errors that occur during the database query

                                Toast.makeText(Authenticate.this, "Error occurred while checking user registration.", Toast.LENGTH_SHORT).show();
                            }
                        });

                    } else {

                        // Sign in failed
                        Toast.makeText(Authenticate.this, "Verification failed. Please try again.", Toast.LENGTH_SHORT).show();
                    }
                });
    }

    private void signIn(){

        Intent intent=gsc.getSignInIntent();
        startActivityForResult(intent,RC_SIGN_IN);
    }


    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode==RC_SIGN_IN){
            Task<GoogleSignInAccount> task=GoogleSignIn.getSignedInAccountFromIntent(data);


            try {

                GoogleSignInAccount account=task.getResult(ApiException.class);
                firebaseAuth(account.getIdToken());
            }

            catch (Exception e){

                Toast.makeText(this, "error", Toast.LENGTH_SHORT).show();
            }

        }
    }

    private void firebaseAuth(String idToken){

        AuthCredential credential= GoogleAuthProvider.getCredential(idToken,null);
        mAuth.signInWithCredential(credential).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                if (task.isSuccessful()){
                    FirebaseUser user=mAuth.getCurrentUser();
                    String uid=user.getUid();

                    DatabaseReference reference=FirebaseDatabase.getInstance().getReference();
                    reference.child("users").addListenerForSingleValueEvent(new ValueEventListener() {
                        @Override
                        public void onDataChange(@NonNull DataSnapshot snapshot) {
                            if (snapshot.hasChild(uid)){

                                SharedPreferences pre=getSharedPreferences("user",MODE_PRIVATE);
                                SharedPreferences.Editor editor=pre.edit();
                                editor.putString("uid",uid);
                                editor.putBoolean("flag",true);
                                editor.commit();
                                Intent intent=new Intent(getApplicationContext(),frameMain.class);
                                startActivity(intent);



                            }

                            else {

                                SharedPreferences pre=getSharedPreferences("user",MODE_PRIVATE);
                                SharedPreferences.Editor editor=pre.edit();
                                editor.putString("uid",uid);

                                editor.commit();
                                Intent intent=new Intent(getApplicationContext(),Register.class);
                                startActivity(intent);

                            }
                        }

                        @Override
                        public void onCancelled(@NonNull DatabaseError error) {

                        }
                    });

                }
            }
        });
    }


}
