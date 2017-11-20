package com.example.ryuyoungsoo.ffmpegtestproject;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    static {
        System.loadLibrary("ffmpegTest");
    }

    public native int run_ffmpeg(int argc, char[][] argv);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button tempBtn = (Button) findViewById(R.id.btn_1);

        tempBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // 이부분에 원하는 명령어를 삽입하세요

                String something = "-d";
                String[] splitedA = something.split(" ");
                char[][] temp = new char[splitedA.length][];
                for (int i=0; i<splitedA.length; i++) {
                    temp[i] = splitedA[i].toCharArray();
                }
                run_ffmpeg(temp.length, temp);

            }
        });
    }
}
