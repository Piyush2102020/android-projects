package com.example.connect;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

public class replies extends AppCompatActivity {

    TextView username,time,likesCount,comment,message;
    ImageView like,commentBox;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_replies);
        Intent intent=getIntent();
        String name=intent.getStringExtra("name");
        String time1= intent.getStringExtra("time");

        long likes=intent.getLongExtra("likes",0);
        String message1=intent.getStringExtra("message");
        String pushId=intent.getStringExtra("postId");
        boolean isLiked=intent.getBooleanExtra("isLiked",false);
        long rLike= likes;

        View itemView=getLayoutInflater().inflate(R.layout.post_lay,null);


        commentBox=itemView.findViewById(R.id.replies);
        username=itemView.findViewById(R.id.username);
        time=itemView.findViewById(R.id.time);
        likesCount=itemView.findViewById(R.id.likeCount);
        comment=itemView.findViewById(R.id.comment);
        message=itemView.findViewById(R.id.text);
        like=itemView.findViewById(R.id.like);

        fun fun=new fun();
        username.setText(name);
        time.setText(time1);
        message.setText(message1);
        if (isLiked){
           like.setImageResource(R.drawable.fill_heart);

        }
        else {
          like.setImageResource(R.drawable.heart);

        }

        like.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (isLiked) {
                    fun.postDiLike(pushId);
                    long newLike=rLike-1;
                    like.setImageResource(R.drawable.heart);
                    likesCount.setText(String.valueOf(newLike));

                } else {
                    fun.postLike(pushId);
                    like.setImageResource(R.drawable.fill_heart);
                    long newLike=rLike+1;
                    likesCount.setText(String.valueOf(newLike));
                }
            }
        });



        ViewGroup parentLayout=findViewById(R.id.postFrame);
        parentLayout.addView(itemView);


    }
}