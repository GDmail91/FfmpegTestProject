# FFMPEG 라이브러리 자바에서 사용하도록 만든 애플리케이션

## 사용법

원하는 구간에서 ffmpeg 명령어를 다음과 같이 작성하세요.

```
...
// Native 라이브러리 추가
static {
    System.loadLibrary("ffmpegTest");
}

public native int run_ffmpeg(int argc, char[][] argv);
...


...
// Arguments 지정
String something = "-d";

String[] splitedArg = something.split(" ");
char[][] temp = new char[splitedArg.length][];
for (int i=0; i<splitedArg.length; i++) {
    temp[i] = splitedArg[i].toCharArray();
}

// Native 호출
run_ffmpeg(temp.length, temp);
...
```