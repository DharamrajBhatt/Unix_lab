#include<stdio.h>
#include<semaphore.h>
#include<pthread.h>
#include<unistd.h>
#include<assert.h>
#include<stdlib.h>

sem_t var_semaphore;

void *fuction1(void *arg){

    int error1=0;

    while(1){
            error1=sem_wait(&var_semaphore);
            assert(error1==0);
            printf("thread 1\n");
    }
    //return NULL;
}

void *fuction2(void *arg){

   int error2=0;

    while(1){
            error2=sem_wait(&var_semaphore);
            assert(error2==0);
            printf("thread 2\n");
    }
   // return NULL;
}

void *funcreate3(void *arg){

  int error3=0;

   while(1){
            error3=sem_wait(&var_semaphore);
            assert(error3==0);
            printf("thread 3\n");
    }
   // return NULL;
}

int main(){

    pthread_t *th1,*th2,*th3;
    int i=0,rc=0,create1=0,create2=0,create3=0;
    th1=(pthread_t *)malloc(sizeof(*th1));
    th2=(pthread_t *)malloc(sizeof(*th2));
    th3=(pthread_t *)malloc(sizeof(*th3));

    i=sem_init(&var_semaphore,0,1);
    assert(i==0);

    create1=pthread_create(th1,NULL,fuction1,NULL);
    assert(create1==0);

    create2=pthread_create(th2,NULL,fuction2,NULL);
    assert(create2==0);

    create3=pthread_create(th3,NULL,funcreate3,NULL);
    assert(create3==0);
	int j = 0;
    while(j<9){
            rc=sem_post(&var_semaphore);
            assert(rc==0);
            sleep(1);
            j++;
    }
    return 0;
}
