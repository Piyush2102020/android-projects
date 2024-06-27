package com.example.connect;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.navigation.NavigationBarView;
import com.google.firebase.database.FirebaseDatabase;

public class frameMain extends AppCompatActivity {

    BottomNavigationView bnView;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_frame_main);




        bnView=findViewById(R.id.bnview);





        bnView.setSelectedItemId(R.id.home);



        bnView.setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {

                int itemId= item.getItemId();


                if (itemId==R.id.home){

                    loadFrag(new home());
                }

                 else if (itemId==R.id.search) {

                    loadFrag(new search());

                }

                 else if (itemId==R.id.group) {


                    loadFrag(new add());

                }


                else {

                    loadFrag(new profle());
                }


                return true;

            }
        });

        if (getApplicationContext()!=null ){
            home home=new home();
            home.fetchPost();
        }

    }



    public void loadFrag(Fragment fragment) {
        if (!isFinishing() && !isDestroyed()) {
            getSupportFragmentManager().beginTransaction()
                    .replace(R.id.frame, fragment)
                    .commit();



        }
    }}