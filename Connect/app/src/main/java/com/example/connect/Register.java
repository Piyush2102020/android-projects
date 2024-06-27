package com.example.connect;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class Register extends AppCompatActivity {


    EditText name, username;
    AppCompatButton register;

    DatabaseReference databaseReference;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);


        name = findViewById(R.id.name);
        username = findViewById(R.id.username);
        register = findViewById(R.id.register);

        SharedPreferences pre=getSharedPreferences("user",MODE_PRIVATE);
        Boolean flag=pre.getBoolean("flag",false);
        String phone1=pre.getString("uid","");
        String id=pre.getString("id","");

        if (flag){

            Intent intent=new Intent(getApplicationContext(),frameMain.class);

            startActivity(intent);
            finish();



        }

        databaseReference = FirebaseDatabase.getInstance().getReferenceFromUrl("https://dhaga-8562b-default-rtdb.firebaseio.com/");




        register.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name1 = name.getText().toString().trim();
                String username1 = username.getText().toString().trim();

                if (name1.isEmpty()  || username1.isEmpty() ) {
                    Toast.makeText(Register.this, "Please fill all fields", Toast.LENGTH_SHORT).show();
                    return;
                }


                DatabaseReference userRef = databaseReference.child("users").child(phone1);
                DatabaseReference phoneRef1=databaseReference.child("phone");
                DatabaseReference usernamesRef = databaseReference.child("usernames");

// ...

                usernamesRef.addListenerForSingleValueEvent(new ValueEventListener() {
                    @Override
                    public void onDataChange(@NonNull DataSnapshot snapshot) {
                        if (snapshot.child(username1).exists()) {
                            Toast.makeText(Register.this, "Username already exists", Toast.LENGTH_SHORT).show();
                        } else {
                            DatabaseReference phoneRef = databaseReference.child("users");

                            phoneRef.addListenerForSingleValueEvent(new ValueEventListener() {
                                @Override
                                public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                                    if (dataSnapshot.child(phone1).exists()) {
                                        Toast.makeText(Register.this, "Phone number already exists", Toast.LENGTH_SHORT).show();
                                    } else {
                                        usernamesRef.child(username1).setValue(phone1);
                                        userRef.child("name").setValue(name1);
                                        userRef.child("username").setValue(username1);
                                        userRef.child("phone").setValue(phone1);
                                        Toast.makeText(Register.this, "Registration successful", Toast.LENGTH_SHORT).show();
                                        Intent intent = new Intent(getApplicationContext(), frameMain.class);
                                        SharedPreferences pre = getSharedPreferences("user", MODE_PRIVATE);
                                        SharedPreferences.Editor editor = pre.edit();
                                        editor.putString("phone", phone1);
                                        editor.putString("username", username1);
                                        editor.putBoolean("flag", true);
                                        editor.apply();
                                        startActivity(intent);
                                        finish();
                                    }
                                }

                                @Override
                                public void onCancelled(@NonNull DatabaseError databaseError) {
                                    Toast.makeText(Register.this, "Error", Toast.LENGTH_SHORT).show();
                                }
                            });
                        }
                    }

                    @Override
                    public void onCancelled(@NonNull DatabaseError error) {
                        Toast.makeText(Register.this, "Error", Toast.LENGTH_SHORT).show();
                    }
                });

// ...
            }
        });
    }
}
