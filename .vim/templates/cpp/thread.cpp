#include <stdio.h>
#include <pthread.h>


void *fun1(void *)
{
    for(int i=0; i <= 6; i++)
    {
        printf("This is a pthread_1.\n");
        if(i == 2)
            break;
    }
    return NULL;
}


int main(void)
{
    printf("start main\n");

    // 创建线程一
    pthread_t t1;
    int ret = pthread_create(&t1, NULL, fun1, NULL);
    if(ret != 0)
    {
        printf("Create pthread error!\n");
        return -1;
    }

    pthread_join(t1, NULL);

    return 0;
}
