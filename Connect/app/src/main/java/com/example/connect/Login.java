package com.example.connect;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class Login extends AppCompatActivity {

    EditText phone, password;
    AppCompatButton login;
    TextView registerPage;

    DatabaseReference databaseReference;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        registerPage=findViewById(R.id.registerPage);
        phone = findViewById(R.id.phone);
        password = findViewById(R.id.password);
        login = findViewById(R.id.login);

        SharedPreferences pre=getSharedPreferences("user",MODE_PRIVATE);
        Boolean flag=pre.getBoolean("flag",false);

        if (flag){

            Intent intent=new Intent(getApplicationContext(),frameMain.class);

            startActivity(intent);



        }


        databaseReference = FirebaseDatabase.getInstance().getReference();

        registerPage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent=new Intent(getApplicationContext(),Register.class);
                startActivity(intent);
            }
        });
        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String phoneNumber = phone.getText().toString().trim();
                String userPassword = password.getText().toString().trim();

                DatabaseReference userRef = databaseReference.child("phone").child(phoneNumber);

                userRef.addListenerForSingleValueEvent(new ValueEventListener() {
                    @Override
                    public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                        if (dataSnapshot.exists()) {

                            String storedPassword = dataSnapshot.child("password").getValue(String.class);
                            if (userPassword.equals(storedPassword)) {
                                // Password is correct, login successful
                                String username=dataSnapshot.child("username").getValue(String.class);
                                Toast.makeText(Login.this, "Login successful", Toast.LENGTH_SHORT).show();
                                Intent intent=new Intent(getApplicationContext(),frameMain.class);
                                startActivity(intent);
                                SharedPreferences pre=getSharedPreferences("user",MODE_PRIVATE);
                                SharedPreferences.Editor editor= pre.edit();
                                editor.putString("phone",phoneNumber);
                                editor.putBoolean("flag",true);
                                editor.putString("username",username);
                                editor.commit();
                                finish();
                                // Proceed to the next activity or perform required actions
                            } else {
                                Toast.makeText(Login.this, "Incorrect password", Toast.LENGTH_SHORT).show();
                            }
                        } else {
                            Toast.makeText(Login.this, "User not found", Toast.LENGTH_SHORT).show();
                        }
                    }

                    @Override
                    public void onCancelled(@NonNull DatabaseError databaseError) {
                        Toast.makeText(Login.this, "Error", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }
}
