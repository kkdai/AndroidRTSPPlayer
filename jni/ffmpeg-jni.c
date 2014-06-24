#include <string.h>
#include <jni.h>
#include <android/log.h>


#include "libavformat/avformat.h"


#define LOG_TAG "FFmpegJNI"
#define LOGI(...) {__android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__);}
#define LOGE(...) {__android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__);}


jstring Java_com_example_rtspplayer_MainActivity_stringFromJNI( JNIEnv* env, jobject thiz )
{
    return (*env)->NewStringUTF(env, "Hello from My JNI work !");
}

void Java_com_example_rtspplayer_MainActivity_getVersions(JNIEnv *env, jclass jc, jobject jvers)
{
    int *vers = (*env)->GetDirectBufferAddress(env, jvers);
    vers[0] = LIBAVFORMAT_VERSION_MAJOR;
    vers[1] = LIBAVCODEC_VERSION_MAJOR;
    vers[2] = LIBAVUTIL_VERSION_MAJOR;
}
