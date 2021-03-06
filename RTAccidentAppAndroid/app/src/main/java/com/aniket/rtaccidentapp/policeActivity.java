package com.aniket.rtaccidentapp;

import android.app.DialogFragment;
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


    EditText edtvehicleNo;
    TextView Button;
    EditText edtlocation;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.police);

        Spinner dropdowncause = findViewById(R.id.spinnerCause);
        Spinner dropdownRoadCondition = findViewById(R.id.spinnerRoadCondition);
        final EditText edittextTime = findViewById(R.id.edittexttime);
        edtvehicleNo = (EditText) findViewById(R.id.edittextvehicleno);
        Button = findViewById(R.id.Button);
        edtlocation = (EditText) findViewById(R.id.edittextlocation);


        ArrayAdapter<String> myAdapter1 = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, getResources().getStringArray(R.array.names));
        myAdapter1.setDropDownViewResource(R.layout.support_simple_spinner_dropdown_item);
        dropdowncause.setAdapter(myAdapter1);

        ArrayAdapter<String> myAdapter2 = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, getResources().getStringArray(R.array.roadcondition));
        myAdapter2.setDropDownViewResource(R.layout.support_simple_spinner_dropdown_item);
        dropdownRoadCondition.setAdapter(myAdapter2);


        edittextTime.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Initialize a new time picker dialog fragment
                DialogFragment dFragment = new TimePickerFragment();

                // Show the time picker dialog fragment
                dFragment.show(getFragmentManager(),"Time Picker");
            }
        });


/*

        edittextTime.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                // TODO Auto-generated method stub
                Calendar calender = Calendar.getInstance();
                int inbuilthour = calender.get(Calendar.HOUR_OF_DAY);
                int inbuiltminute = calender.get(Calendar.MINUTE);
                int inbuiltsecond = calender.get(Calendar.SECOND);
                */
/*TimePickerDialog mTimePicker = new TimePickerDialog(policeActivity.this, new TimePickerDialog.OnTimeSetListener() {

                }, hour, minute, second, true);*//*

                */
/*TimePickerDialog timePickerDialog=new TimePickerDialog(policeActivity.this, new TimePickerDialog.OnTimeSetListener() {
                    @Override
                    public void onTimeSet(TimePicker view, int hourOfDay, int minute) {

                    }
                }, 0, 0, false)
                mTimePicker.setTitle("Select Time");
                mTimePicker.show();*//*




            }
        });

*/

        Button.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View arg0) {

                final String vehicleno = edtvehicleNo.getText().toString();
                if (!isValidvehicleno(vehicleno)) {
                    edtvehicleNo.setError("Invalid Vehiclenumber");
                }

                final String strlocation = edtlocation.getText().toString();
                if (strlocation == null) {
                    edtlocation.setError("location not filled");
                }


            }
        });
    }

    // validating vehicle no.
    private boolean isValidvehicleno(String vehiclenum) {
        String vehicleno_PATTERN = "^[A-Z]{2}\\s[0-9]{2}\\s[A-Z]{2}\\s[0-9]{4}$";

        Pattern pattern = Pattern.compile(vehicleno_PATTERN);
        Matcher matcher = pattern.matcher(vehiclenum);
        return matcher.matches();
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