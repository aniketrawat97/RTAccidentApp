package com.aniket.rtaccidentapp;

import android.app.DialogFragment;
import android.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class ambulanceActivity extends AppCompatActivity {

    TextView Button;
    EditText edtlocation;
    EditText edtdate;
    EditText edthospital;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ambulance);

        final EditText edittextTime = findViewById(R.id.edittexttime);
        edtlocation = (EditText) findViewById(R.id.edittextlocation);
        edtdate = (EditText) findViewById(R.id.edittextdate);
        edthospital = (EditText) findViewById(R.id.edittexthospital);


        edittextTime.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Initialize a new time picker dialog fragment
                DialogFragment dFragment = new TimePickerFragment();

                // Show the time picker dialog fragment
                dFragment.show(getFragmentManager(),"Time Picker");
            }
        });

        Button.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View arg0) {

                if(TextUtils.isEmpty(edtlocation.getText().toString())){
                    edtlocation.setError("Location is missing");
                }

                if(TextUtils.isEmpty(edtdate.getText().toString())){
                    edtdate.setError("Date is missing");
                }

                if(TextUtils.isEmpty(edthospital.getText().toString())){
                    edtdate.setError("Hospital name is missing");
                }







            }
        });


    }

    public void onStart() {
        super.onStart();

        EditText edtDate = (EditText) findViewById(R.id.edittextdate);
        edtDate.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public void onFocusChange(View view, boolean hasfocus) {
                if (hasfocus) {
                    DateDialog dialog = new DateDialog(view);
                    FragmentTransaction ft = getFragmentManager().beginTransaction();

                    dialog.show(ft, "DatePicker");

                }
            }

        });
    }



}
