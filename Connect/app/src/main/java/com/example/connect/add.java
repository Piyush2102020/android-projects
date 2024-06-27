package com.example.connect;

import android.os.Bundle;

import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ServerValue;

public class add extends Fragment {

    EditText message;
    AppCompatButton post;
    DatabaseReference reference;
    FirebaseAuth mAuth;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view= inflater.inflate(R.layout.fragment_add, container, false);
        message=view.findViewById(R.id.text);
        post=view.findViewById(R.id.post);

        reference= FirebaseDatabase.getInstance().getReference();
        mAuth=FirebaseAuth.getInstance();


        post.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String message1=message.getText().toString().trim();
                if (message1.isEmpty() || message1 ==null){
                    Toast.makeText(getContext(), "Please add something", Toast.LENGTH_SHORT).show();
                }
                else {
                    String uid=mAuth.getUid();
                    String pushId=reference.child("post").push().getKey();
                    reference.child("post").child(pushId).child("message").setValue(message1);
                    reference.child("post").child(pushId).child("time").setValue(ServerValue.TIMESTAMP);
                    reference.child("post").child(pushId).child("uid").setValue(uid);
                    reference.child("users").child(uid).child("posts").setValue(pushId);
                    message.setText("");
                }

            }
        });

        return view;
    }
}