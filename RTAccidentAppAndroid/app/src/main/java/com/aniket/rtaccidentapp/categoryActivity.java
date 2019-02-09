package com.aniket.rtaccidentapp;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class categoryActivity extends AppCompatActivity {
    Spinner spinnerType;
    static EditText name;
    static EditText number;
    static String result;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.category);
        spinnerType = findViewById(R.id.spinnerType);
        ArrayList<String> types = new ArrayList<String>();
        types.add("Police");
        types.add("Ambulance");
        types.add("Reporter");
        types.add("EyeWitness");
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, types);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinnerType.setAdapter(arrayAdapter);
        name = findViewById(R.id.editTextName);
        number = findViewById(R.id.editTextMobile);
    }
    public synchronized void SendName(View view) throws InterruptedException {
        AddName ad=new AddName();
        ad.execute("aniket");
    }
}

/*

    public void ConnectToDatabase(View view){
        try {
            // SET CONNECTIONSTRING
            Class.forName("net.sourceforge.jtds.jdbc.Driver").newInstance();
            String username = "root";
            String password = "root";
            Connection DbConn = DriverManager.getConnection("jdbc:jtds:sqlserver://127.0.0.1:3306/accident;user=" + username + ";password=" + password);

            Log.i("Connection","open");
            Statement stmt = DbConn.createStatement();
            ResultSet reset = stmt.executeQuery(" insert into personal_info (Name) values(\""+name.getText()+"\"')");

            name.setText(reset.getString(1));

            DbConn.close();

        } catch (Exception e)
        {
            Log.w("Error connection","" + e.getMessage());
        }
    }
*/
