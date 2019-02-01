package com.aniket.rtaccidentapp;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

import java.util.ArrayList;

public class categoryActivity extends AppCompatActivity {
    Spinner spinnerType;
    SpinnerAdapter spinnerAdapter;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.category);
        spinnerType=findViewById(R.id.spinnerType);
        ArrayList<String> types=new ArrayList<String>();
        types.add("Police");
        types.add("Ambulance");
        types.add("Reporter");
        types.add("EyeWitness");
        ArrayAdapter<String> arrayAdapter=new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item,types);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinnerType.setAdapter(arrayAdapter);
    }
}
