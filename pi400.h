#include <pthread.h>

#ifndef HOOK_PATH
#define HOOK_PATH "/usr/local/pi400kb-hook.sh"
#endif

int initUSB();
int main();
void sendHIDReport();
