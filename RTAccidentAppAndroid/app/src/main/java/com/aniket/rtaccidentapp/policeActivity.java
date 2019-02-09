package com.aniket.rtaccidentapp;

import android.app.FragmentTransaction;
import android.app.TimePickerDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TimePicker;

import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class policeActivity extends AppCompatActivity {

    Spinner dropDown1;
    Spinner dropDown2;
    EditText Time;
    EditText vehicleNoEdittxt;
    TextView Button;
    EditText locationedt;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.police);

        Spinner dropdown1 = findViewById(R.id.spinner1);
        Spinner dropdown2 = findViewById(R.id.spinner2);
         final EditText editTextTime = findViewById(R.id.txttime);
        vehicleNoEdittxt = (EditText) findViewById(R.id.vehicleno);
        Button = findViewById(R.id.Button);
        locationedt = (EditText) findViewById(R.id.location);


        ArrayAdapter<String> myAdapter1 = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, getResources().getStringArray(R.array.names));
        myAdapter1.setDropDownViewResource(R.layout.support_simple_spinner_dropdown_item);
        dropdown1.setAdapter(myAdapter1);

        ArrayAdapter<String> myAdapter2 = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, getResources().getStringArray(R.array.roadcondition));
        myAdapter2.setDropDownViewResource(R.layout.support_simple_spinner_dropdown_item);
        dropdown2.setAdapter(myAdapter2);


        editTextTime.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                // TODO Auto-generated method stub
                Calendar calender = Calendar.getInstance();
                int inbuilthour = calender.get(Calendar.HOUR_OF_DAY);
                int inbuiltminute = calender.get(Calendar.MINUTE);
                int inbuiltsecond = calender.get(Calendar.SECOND);
                /*TimePickerDialog mTimePicker = new TimePickerDialog(policeActivity.this, new TimePickerDialog.OnTimeSetListener() {

                }, hour, minute, second, true);*/
                /*TimePickerDialog timePickerDialog=new TimePickerDialog(policeActivity.this, new TimePickerDialog.OnTimeSetListener() {
                    @Override
                    public void onTimeSet(TimePicker view, int hourOfDay, int minute) {

                    }
                }, 0, 0, false)
                mTimePicker.setTitle("Select Time");
                mTimePicker.show();*/



            }
        });


        Button.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View arg0) {

                final String vehicleno = vehicleNoEdittxt.getText().toString();
                if (!isValidvehicleno(vehicleno)) {
                    vehicleNoEdittxt.setError("Invalid Vehiclenumber");
                }

                final String location = locationedt.getText().toString();
                if (location == null) {
                    locationedt.setError("location not filled");
                }


            }
        });
    }



    // validating vehicle no.
    private boolean isValidvehicleno(String vehiclenum) {
        String vehicleno_PATTERN = "^[A-Z]{2}[ -][0-9]{1,2}(?: [A-Z])?(?: [A-Z]*)? [0-9]{4}$";

        Pattern pattern = Pattern.compile(vehicleno_PATTERN);
        Matcher matcher = pattern.matcher(vehiclenum);
        return matcher.matches();
    }



    public void onStart() {
        super.onStart();

        EditText txtDate = (EditText) findViewById(R.id.txtdate);
        txtDate.setOnFocusChangeListener(new View.OnFocusChangeListener() {
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