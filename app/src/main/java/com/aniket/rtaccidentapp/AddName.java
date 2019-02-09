package com.aniket.rtaccidentapp;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

public class AddName extends AsyncTask<String,Void,String>{

    protected void onPreExecute(){
        }
    @Override
    protected String doInBackground(String... arg) {

        try{
            String name = categoryActivity.name.getText().toString().trim();
            String number = categoryActivity.number.getText().toString().trim();
            String link="http://10.0.2.2/addName.php";
            String data  = URLEncoder.encode("name", "UTF-8") + "=" + URLEncoder.encode(name, "UTF-8");
            data += "&"+URLEncoder.encode("number", "UTF-8") + "=" + URLEncoder.encode(number, "UTF-8");
            URL url = new URL(link);
            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
            OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
            wr.write( data );
            wr.flush();
            BufferedReader reader = new BufferedReader(new
                    InputStreamReader(conn.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String line = null;

            // Read Server Response
            while((line = reader.readLine()) != null) {
                sb.append(line);
                break;
            }
            categoryActivity.result=sb.toString();
            Log.i("info",sb.toString());
            return sb.toString();

        }   catch(Exception e){
            return new String("Exception: " + e.getMessage());
            }
    }
    @Override
    protected void onPostExecute(String results){

    }
}
