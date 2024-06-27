package com.example.connect;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.database.ChildEventListener;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.ArrayList;


public class home extends Fragment {
    ArrayList<postModel>list;
    RecyclerView recyclerView;
    SwipeRefreshLayout swipeRefreshLayout;
    postAdapter adapter;
    DatabaseReference reference;
    FirebaseAuth mAuth;
    fun fun;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view= inflater.inflate(R.layout.fragment_home, container, false);
        recyclerView=view.findViewById(R.id.homeR);
        swipeRefreshLayout=view.findViewById(R.id.swipe);
        mAuth=FirebaseAuth.getInstance();
        fun=new fun();

        list=new ArrayList<>();
        adapter=new postAdapter(list,getContext());
        reference= FirebaseDatabase.getInstance().getReference();
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));


        fetchPost();
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                newPost();
                swipeRefreshLayout.setRefreshing(false);
            }
        });

        recyclerView.setAdapter(adapter);

        return view;
    }



    public void fetchPost(){
        if (getActivity()!=null && getContext() !=null) {
            reference.child("post").addListenerForSingleValueEvent(new ValueEventListener() {
                @Override
                public void onDataChange(@NonNull DataSnapshot snapshot) {
                    for (DataSnapshot snapshot1 : snapshot.getChildren()) {
                        String uid = mAuth.getUid();
                        String pushId = snapshot1.getKey();
                        Long time1 = snapshot.child(pushId).child("time").getValue(Long.class);
                        String time = fun.getTimeAgo(time1);
                        String message = snapshot.child(pushId).child("message").getValue(String.class);
                        String userId = snapshot.child(pushId).child("uid").getValue(String.class);
                        Long likes = snapshot.child(pushId).child("like").getChildrenCount();
                        Long comment = snapshot.child(pushId).child("comment").getChildrenCount();
                        boolean isLiked = snapshot.child(pushId).child("like").hasChild(uid);


                        populate(pushId, time, message, userId, likes, comment, isLiked);
                    }


                }

                @Override
                public void onCancelled(@NonNull DatabaseError error) {

                }
            });


        }
    }

    public void newPost(){

        reference.child("post").addChildEventListener(new ChildEventListener() {
            @Override
            public void onChildAdded(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {


                    String uid = mAuth.getUid();
                    String pushId = snapshot.getKey();
                    Long time1 = snapshot.child("time").getValue(Long.class);
                    String time = fun.getTimeAgo(time1);
                    String message = snapshot.child("message").getValue(String.class);
                    String userId = snapshot.child("uid").getValue(String.class);
                    Long likes = snapshot.child("like").getChildrenCount();
                    Long comment = snapshot.child("comment").getChildrenCount();
                    boolean isLiked = snapshot.child("like").hasChild(uid);


                    populate(pushId, time, message, userId, likes, comment, isLiked);



            }

            @Override
            public void onChildChanged(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {

            }

            @Override
            public void onChildRemoved(@NonNull DataSnapshot snapshot) {

            }

            @Override
            public void onChildMoved(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {

            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });

    }




    public void populate(String pushId,String time,String message,String userId,long likes,long comment ,boolean isLiked){
        reference.child("users").child(userId).addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {
                String name=snapshot.child("name").getValue(String.class);
                String username=snapshot.child("username").getValue(String.class);
                String dp=snapshot.child("imageUrl").getValue(String.class);

                boolean isSaved=snapshot.child("saved").hasChild(pushId);

                postModel model=new postModel(pushId,time,message,userId,name,username,likes,comment,isLiked,isSaved,dp);
                list.add(0,model);
                adapter.notifyDataSetChanged();
            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });

    }


}