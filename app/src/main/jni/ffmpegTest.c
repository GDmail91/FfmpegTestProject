#include <com_example_ryuyoungsoo_ffmpegtestproject_MainActivity.h>
#include "ffmpeg.h"

JNIEXPORT jint JNICALL
Java_com_example_ryuyoungsoo_ffmpegtestproject_MainActivity_run_1ffmpeg(JNIEnv *env, jobject obj, jint argv, jobjectArray argc) {

    int result = run_ffmpeg((int) argv, (char *) argc);
    jint jResult = result;
    return jResult;
}