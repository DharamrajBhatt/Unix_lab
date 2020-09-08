#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>
#include<sys/wait.h>
void main()
{
  int fp[2],a;
  char ch[12];
//char ch1[12]="";
  pipe(fp);
  a=fork();
  if(a==0)
  {
    printf("child id=%d\n",getpid());
    fp[1]=open("d.txt",O_WRONLY);//file open in write only mode
    write(fp[1],"Hello World",12);
    close(fp[1]);
  }
  else
  {
//wait(NULL);
    printf("parent id=%d\n",getpid());
    fp[0]=open("d.txt",O_RDONLY);//file open in read only mode
    read(fp[0],ch,12);
    printf(" =%s",ch);
    close(fp[0]);
  }
}
