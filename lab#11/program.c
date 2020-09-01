#include<stdio.h>
#include<stdlib.h>
int callfunction(int data1, int num2)
{
  return data1 + num2;
}
int data2;
//int data=23;                                                         
char c[]="christ";
int main()
{
  // int data1;
   int data1=23;                                                         
   // static int num;                                                     
   static int num2=12;
   char *p=(char*)malloc(sizeof(char));
   callfunction(data1,num2);
   return 0;
}

