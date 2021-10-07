#include <stdio.h>

// 1: FizzBuzz
// 2: Fizz
// 3: Buzz
// 0: None

int fizzBuzz(int number) {
    if (number == 0) {
        printf("%d \n", number);
        
        return 0;
    }
    
    if (number % 3 == 0 && number % 5 == 0) {
        printf("%d FizzBuzz \n", number);
        
        return 1;
    }
    
    if (number % 3 == 0) {
        printf("%d Fizz \n", number);
        
        return 2;
    }
    
    if (number % 5 == 0) {
        printf("%d Buzz \n", number);
        
        return 3;
    }
    
    return 0;
}

void createSimpleFizzBuzz(int val) {
    int fizz = 0;
    int buzz = 0;
    int fizz_buzz = 0;
    
    for (int i = 0; i <= val; i++) {
        int val = fizzBuzz(i);
        
        if (val == 1) {
            fizz_buzz++;
        }
        
        if (val == 2) {
            fizz++;
        }
        
        if (val == 3) {
            buzz++;
        }
    }
    
    printf("Total de Fizz: %d \n", fizz);
    printf("Total de Buzz: %d \n", buzz);
    printf("Total de FizzBuzz: %d \n", fizz_buzz);
}

int main() {
    createSimpleFizzBuzz(200);
    
    return 0;
}
