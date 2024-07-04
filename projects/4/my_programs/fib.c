#include <stdio.h>

int fib(int n){
  int a = 0;
  int b = 1;
  int temp;
  for (int i = 0; i< n;i++){
    temp = a;
    a = a + b;
    b =  temp;
  }
  return b;
  
}
int main(){
  int n = 10; 
  printf("%d", fib(n));
  return 0;
}
