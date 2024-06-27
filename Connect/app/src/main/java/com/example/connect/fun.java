package com.example.connect;

import android.content.SharedPreferences;
import android.text.format.DateUtils;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.Date;

public class fun {

    DatabaseReference reference= FirebaseDatabase.getInstance().getReference();
    FirebaseAuth mAuth=FirebaseAuth.getInstance();

    public  String getTimeAgo(long serverTimestamp) {
        long currentTime = System.currentTimeMillis();
        long timeDifference = currentTime - serverTimestamp;

        // Convert time difference to seconds
        long seconds = timeDifference / 1000;

        if (seconds < 60) {
            return "Just now";
        } else if (seconds < 60 * 60) {
            int minutes = (int) (seconds / 60);
            return minutes + (minutes == 1 ? " minute ago" : " minutes ago");
        } else if (seconds < 24 * 60 * 60) {
            int hours = (int) (seconds / (60 * 60));
            return hours + (hours == 1 ? " hour ago" : " hours ago");
        } else if (seconds < 7 * 24 * 60 * 60) {
            int days = (int) (seconds / (24 * 60 * 60));
            return days + (days == 1 ? " day ago" : " days ago");
        } else {
            // If it's more than a week, use DateUtils for a formatted date string
            Date date = new Date(serverTimestamp);
            return DateUtils.getRelativeTimeSpanString(date.getTime(), currentTime,
                    DateUtils.DAY_IN_MILLIS).toString();
        }
    }

    public void postLike(String postId){

        String uid=mAuth.getUid();
        if (uid!=null) {
            reference.child("post").child(postId).child("like").child(uid).setValue(true);
        }
    }


    public void postDiLike(String postId){

        String uid=mAuth.getUid();
        if (uid!=null) {
            reference.child("post").child(postId).child("like").child(uid).removeValue();
        }
    }

    public void postSave(String postId){
        String uid=mAuth.getUid();
        if (uid!=null) {
            reference.child("user").child(uid).child("saved").child(postId).setValue(true);
        }
    }


    public void removeSave(String postId){
        String uid=mAuth.getUid();
        if (uid!=null) {
            reference.child("user").child(uid).child("saved").child(postId).removeValue();
        }
    }
}
