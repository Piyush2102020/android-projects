package com.example.agrodoc;

import android.Manifest;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.io.BufferedReader;
import java.io.InputStreamReader;

import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import com.google.gson.Gson;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.ConnectException;
import java.net.Socket;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.UUID;

import okhttp3.internal.cache.DiskLruCache;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class MainActivity extends AppCompatActivity {
    EditText n, p, k,h;
    Spinner region, crop, years, months;
    Button calculate,fetch;
    private String[] cropDescriptions;
    UUID uuid = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    BluetoothDevice device = null;
    BluetoothAdapter bluetoothAdapter;
    BluetoothSocket socket;
    OutputStream outputStream;
    InputStream inputStream;
    ArrayList<String> clist, month, year, fertilizer;

    private int index = 0;

    private static final int DELAY = 5;

    FloatingActionButton btn;
    private static final int REQUEST_ENABLE_BT = 1;

    TextView answer;

    private boolean isBound = false;

    private static final UUID MY_UUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");

    DatabaseReference reference;
    ArrayList<String> regionKList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        btn = findViewById(R.id.zone);
        clist = new ArrayList<>();
        month = new ArrayList<>();
        year = new ArrayList<>();
        fertilizer = new ArrayList<>();
        regionKList = new ArrayList<>();
        n = findViewById(R.id.nitrogen);
        p = findViewById(R.id.p);
        answer = findViewById(R.id.answer);
        h=findViewById(R.id.h);
        k = findViewById(R.id.k);
        crop = findViewById(R.id.crop);
        years = findViewById(R.id.year);
        months = findViewById(R.id.month);
        region = findViewById(R.id.region);
        calculate = findViewById(R.id.calculate);


        String a[] = {"JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"};

        for (String b : a) {
            month.add(b);
        }
        for (int i = 2024; i < 2050; i++) {
            year.add(String.valueOf(i));
        }

        checkBluetoothPermissions();
        // Create AlertDialog
        View dialogView = getLayoutInflater().inflate(R.layout.dialog, null);

        // Create AlertDialog
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(dialogView);
        AlertDialog dialog = builder.create();


        reference = FirebaseDatabase.getInstance().getReferenceFromUrl("https://agrodoc-4c3a7-default-rtdb.firebaseio.com/");
        addList();


        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), zone.class));
            }
        });


        if (ActivityCompat.checkSelfPermission(MainActivity.this, Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_DENIED) {

            ActivityCompat.requestPermissions(MainActivity.this, new String[]{Manifest.permission.BLUETOOTH_CONNECT}, 100);

        }


        ArrayAdapter<String> regionAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, regionKList);
        ArrayAdapter<String> cropAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, clist);
        ArrayAdapter<String> monthAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, month);
        ArrayAdapter<String> yearAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, year);

        crop.setAdapter(cropAdapter);
        months.setAdapter(monthAdapter);
        years.setAdapter(yearAdapter);
        region.setAdapter(regionAdapter);


        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });


        reference.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                dialog.dismiss();
                answer.setText("");
                index = 0;
                fertilizer.clear();
                String crop = dataSnapshot.child("out").child("crop").getValue(String.class);
                Long humidity = dataSnapshot.child("out").child("humidity").getValue(Long.class);
                String k = dataSnapshot.child("out").child("k").getValue(String.class);
                String n = dataSnapshot.child("out").child("n").getValue(String.class);
                String p = dataSnapshot.child("out").child("p").getValue(String.class);
                String ph = dataSnapshot.child("out").child("ph").getValue(String.class);
                double rfLogit = dataSnapshot.child("out").child("rf_logit").getValue(Double.class);
                double tempLogit = dataSnapshot.child("out").child("temp_logit").getValue(Double.class);
                String temperature = dataSnapshot.child("out").child("temperature").getValue(String.class);


                for (DataSnapshot s : dataSnapshot.child("fertilizer").getChildren()) {
                    fertilizer.add(s.getValue(String.class));
                }

                String randomDescription = getRandomDescription();
                randomDescription = randomDescription.replace("c1234", crop);
                randomDescription = randomDescription.replace("h1234", String.valueOf(humidity));
                randomDescription = randomDescription.replace("k1234", String.valueOf(k));
                randomDescription = randomDescription.replace("n1234", String.valueOf(n));
                randomDescription = randomDescription.replace("p1234", String.valueOf(p));
                randomDescription = randomDescription.replace("pt1234", String.valueOf(ph));
                randomDescription = randomDescription.replace("rf1234", String.valueOf(rfLogit));
                randomDescription = randomDescription.replace("tptw1234", String.valueOf(tempLogit));
                randomDescription = randomDescription.replace("t1234", String.valueOf(temperature));

                StringBuffer s = new StringBuffer();
                int i = 1;
                s.append(randomDescription + "\nBased on your npk values and the desired crop. I have prepared a list of fertilizers you can use to achieve the required soil nutrient level. \n");
                for (String a : fertilizer) {
                    s.append(i + ":- " + a + "\n");
                    i++;
                }
                answer.setText(String.valueOf(s));

            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {

            }
        });

//
//        fetch.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//
//                write("1");
//                new Handler().postDelayed(new Runnable() {
//                    @Override
//                    public void run() {
//                        String st=read();
//                        System.out.println(st);
//                        String[] z=splitStringByComma(st);
//                        System.out.println(z.length);
//                        Toast.makeText(MainActivity.this,"Humidity"+String.valueOf(z[0]),Toast.LENGTH_SHORT).show();
//                        n.setText(z[1]);
//                        p.setText(z[2]);
//                        k.setText(z[3]);
//                    }
//                },4000);
//
//
//
//            }
//        });

        calculate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dialog.show();
                // Get text from EditText fields
                String nitrogenText = n.getText().toString();
                String phText = p.getText().toString();
                String kaText = k.getText().toString();
                String month = months.getSelectedItem().toString();
                String year = years.getSelectedItem().toString();
                String crops = crop.getSelectedItem().toString();
                String hu=h.getText().toString();
                // Check if EditText fields are empty or non-numeric
                int nitrogen = TextUtils.isEmpty(nitrogenText) ? 1 : Integer.parseInt(nitrogenText);
                int ph = TextUtils.isEmpty(phText) ? 1 : Integer.parseInt(phText);
                int ka = TextUtils.isEmpty(kaText) ? 1 : Integer.parseInt(kaText);
                int hua = TextUtils.isEmpty(hu) ? 1 : Integer.parseInt(hu);

                // Get selected values from Spinners
                String reg = region.getSelectedItem().toString();

                // Create DataModel object
                Map<String, String> map = new HashMap<>();
                map.put("n", String.valueOf(nitrogen));
                map.put("p", String.valueOf(ph));
                map.put("k", String.valueOf(ka));
                map.put("h",String.valueOf(hua));
                map.put("state", reg.toLowerCase());
                map.put("month", month);
                map.put("year", year);
                map.put("crop", crops);
                reference.child("prediction").setValue(map);

            }
        });

        cropDescriptions = getResources().getStringArray(R.array.crop_descriptions);

    }


    public void addList() {
        clist.add("apple");
        clist.add("areca nut");
        clist.add("arecanut");
        clist.add("banana");
        clist.add("barley");
        clist.add("betel vine");
        clist.add("black gram");
        clist.add("brinjal");
        clist.add("cabbage");
        clist.add("cashew");
        clist.add("cauliflower");
        clist.add("chickpea");
        clist.add("chili");
        clist.add("citrus");
        clist.add("cocoa");
        clist.add("coconut");
        clist.add("coffee");
        clist.add("cotton");
        clist.add("grapes");
        clist.add("green gram");
        clist.add("groundnut");
        clist.add("guava");
        clist.add("jute");
        clist.add("lentils");
        clist.add("maize");
        clist.add("mango");
        clist.add("millets");
        clist.add("mustard");
        clist.add("okra");
        clist.add("onion");
        clist.add("papaya");
        clist.add("pigeon pea");
        clist.add("potato");
        clist.add("rice");
        clist.add("rubber");
        clist.add("safflower");
        clist.add("sesame");
        clist.add("silk (mulberry)");
        clist.add("soybean");
        clist.add("sugarcane");
        clist.add("sunflower");
        clist.add("tea");
        clist.add("tobacco");
        clist.add("tomato");
        clist.add("vanilla");
        clist.add("wheat");


        regionKList.add("ANDAMAN & NICOBAR ISLANDS");
        regionKList.add("ARUNACHAL PRADESH");
        regionKList.add("ASSAM & MEGHALAYA");
        regionKList.add("BIHAR");
        regionKList.add("CHHATTISGARH");
        regionKList.add("COASTAL ANDHRA PRADESH");
        regionKList.add("COASTAL KARNATAKA");
        regionKList.add("EAST MADHYA PRADESH");
        regionKList.add("EAST RAJASTHAN");
        regionKList.add("EAST UTTAR PRADESH");
        regionKList.add("GANGETIC WEST BENGAL");
        regionKList.add("GUJARAT REGION");
        regionKList.add("HARYANA DELHI & CHANDIGARH");
        regionKList.add("HIMACHAL PRADESH");
        regionKList.add("JAMMU & KASHMIR");
        regionKList.add("JHARKHAND");
        regionKList.add("KERALA");
        regionKList.add("KONKAN & GOA");
        regionKList.add("LAKSHADWEEP");
        regionKList.add("MADHYA MAHARASHTRA");
        regionKList.add("MATATHWADA");
        regionKList.add("NAGA MANI MIZO TRIPURA");
        regionKList.add("NORTH INTERIOR KARNATAKA");
        regionKList.add("ORISSA");
        regionKList.add("PUNJAB");
        regionKList.add("RAYALSEEMA");
        regionKList.add("SAURASHTRA & KUTCH");
        regionKList.add("SOUTH INTERIOR KARNATAKA");
        regionKList.add("SUB HIMALAYAN WEST BENGAL & SIKKIM");
        regionKList.add("TAMIL NADU");
        regionKList.add("TELANGANA");
        regionKList.add("UTTARAKHAND");
        regionKList.add("VIDARBHA");
        regionKList.add("WEST MADHYA PRADESH");
        regionKList.add("WEST RAJASTHAN");
        regionKList.add("WEST UTTAR PRADESH");


    }


    private String getRandomDescription() {
        Random random = new Random();
        int index = random.nextInt(cropDescriptions.length);
        return cropDescriptions[index];
    }

//    private void writeMessageCharacterByCharacter(String disc) {
//
//        final Handler handler = new Handler();
//        handler.postDelayed(new Runnable() {
//            @Override
//            public void run() {
//                if (index < disc.length()) {
//                    char c = disc.charAt(index);
//                    answer.append(String.valueOf(c));
//                    index++;
//                    // Continue writing the message character by character
//                    handler.postDelayed(this, DELAY);
//                }
//            }
//        }, DELAY);
//    }


    private void checkBluetoothPermissions() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.BLUETOOTH) != PackageManager.PERMISSION_GRANTED ||
                    ContextCompat.checkSelfPermission(this, Manifest.permission.BLUETOOTH_ADMIN) != PackageManager.PERMISSION_GRANTED) {
                // Permission not granted, request it
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.BLUETOOTH, Manifest.permission.BLUETOOTH_ADMIN}, REQUEST_ENABLE_BT);
            } else {
                // Permission already granted, proceed with Bluetooth operations
                // For example, enable Bluetooth, scan for devices, etc.
            }
        } else {
            // For versions below Android 6.0, permissions are granted at installation time
            // Proceed with Bluetooth operations
        }
    }

    // Handle permission request result
    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQUEST_ENABLE_BT) {
            if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                // Bluetooth permissions granted, proceed with Bluetooth operations
            } else {
                // Bluetooth permissions denied, handle it accordingly
                // For example, show a message to the user indicating why Bluetooth functionality is restricted
            }
        }
    }





}