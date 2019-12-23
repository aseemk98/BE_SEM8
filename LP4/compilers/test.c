#include<stdio.h>

int main(){

	int a = 5;
	float b = 0.5;
	char *p = "Hello";
	if(a>10){
		printf("Greater than 10\n");
	}
	else{
		printf("Less than 10\n");
	}
	int i;
	for(i=0;i<10;i++){
		printf("*\n");
	}
	int c = a*a / b;

	return 0;
}