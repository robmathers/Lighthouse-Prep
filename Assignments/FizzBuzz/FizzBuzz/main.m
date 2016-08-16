//
//  main.m
//  FizzBuzz
//
//  Created by Rob Mathers on 2016-08-14.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int target = 100;
    for (int i = 1; i <= target; i++) {
        if (i % 3 == 0) {
            printf("Fizz");
        }
        
        if (i % 5 == 0) {
            printf("Buzz");
        }
        
        if (i % 3 != 0 && i % 5 != 0) {
            printf("%d", i);
        }
        printf("\n");
    }
    return 0;
}
