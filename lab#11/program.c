#include <stdio.h>
#include <stdlib.h>

const int var = 20;                 /* global variable stored in Initialized Data Segment in read-only area*/
char str[]="christ university";     /*  global variable stored in Initialized Data Segment in read-write area*/
const char number[]="1234";    /* global variable stored in Initialized Data Segment in read-only area*/


char ch;                          /* Uninitialized variable stored in bss*/

int reverse_number(int n)
{
         int result=0,rev;      /*Local variable of called function Stored in stack.*/

        while(n>0)
        {
                rev=n%10;
                result=(result*10)+rev;
                n=n/10;
        }

    printf("\n|\tReverse_n() function Variables\t\t|");
        printf("\n|\taddress of rev: %p\t\t|", &rev);
        printf("\n|\t address of result: %p\t|", &result);
        printf("\n|\taddress of n: %p\t\t|", &n);
        return result;
}

int main()
{

    char *dynamic=(char*)malloc(sizeof(char));    /* memory allocating in heap segment */

    static int data1=50;          /* static variable stored in Initialized Data Segment*/

    static int data2;                 /* Uninitialized static variable stored in bss */

    int n=5;
    int reverse_n;

    printf("\n------------------Stack segment------------------");
    printf("\n|\tMain() function Variables\t\t|");
    printf("\n|\taddress of varial n: %p\t|",&n);
    printf("\n|\taddress of reverse_n: %p\t|\n|\t\t\t\t\t\t|", &reverse_n);
    reverse_n = reverse_number(n);

    printf("\n-------------------Heap segment------------------");
    printf("\n|\t address of dynamic: %p\t|\n|\t\t\t\t\t\t|", &dynamic);
    free(dynamic);

    printf("\n-----------------Data Segment--------------------");

    printf("\n-------------- Uninitiallised or BSS ------------");
    printf("\n|\taddress of ch: %p\t\t|", &ch);
    printf("\n|\taddress of data2: %p\t|\n|\t\t\t\t\t\t|", &data2);

    printf("\n----------------Initiallised --------------------");
    printf("\n|\taddress of str: %p\t\t|", &str);
    printf("\n|\taddress of number: %p\t|", &number);
    printf("\n|\taddress of data1: %p\t|\n-------------------------------------------------\n", &data1);
    return 0;
}


