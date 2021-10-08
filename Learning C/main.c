#include <stdio.h>

// 1: FizzBuzz
// 2: Fizz
// 3: Buzz
// 0: None

int binarySearch(int arr[], int key) {
    int start = 0;
    int end = sizeof(arr);
    
    while (start <= end) {
        int middle = (start + end) / 2;
        
        if (arr[middle] == key) {
            return middle;
        } else if (key < arr[middle]) {
            end = middle - 1;
        } else {
            start = middle + 1;
        }
    }
    
    return -1;
}

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
    
     int arr[] = { 2, 3, 4, 10, 40 };
     int x = 10;
    
     int result = binarySearch(arr, x);
      (result == -1) ? printf("Element is not present in array \n")
                    : printf("Element is present at index %d \n", result);
    
    return 0;
}
