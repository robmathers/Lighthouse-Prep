//
//  main.m
//  LargestNumber
//
//  Created by Rob Mathers on 2016-08-17.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LargestNumber : NSObject
+ (NSNumber *) getLargestNumber:(NSArray<NSNumber *>*)numbers;

@end

@implementation LargestNumber : NSObject

+ (NSNumber *) getLargestNumber:(NSArray<NSNumber *>*)numbers {
    NSNumber *largest;
    if (numbers.count > 0) {
        largest = numbers[0];
    }
    else {
        return nil;
    }
    
    for (NSNumber* number in numbers) {
        if (number > largest) {
            largest = number;
        }
    }
    return largest;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Testing getting largest number...");
        
        NSArray *oneToTen = @[@1, @2, @3, @4, @5, @6, @7, @8, @9, @10];
        
        NSLog(@"Largest from 1 to 10: %@", [LargestNumber getLargestNumber:oneToTen]);
        
        NSMutableArray *randomArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < 100; i++) {
            randomArray[i] = [NSNumber numberWithUnsignedInt: arc4random_uniform(100)];
        }
        
        NSLog(@"Largest from random array: %@", [LargestNumber getLargestNumber:randomArray]);
        
        // Test against sorting
        NSSortDescriptor *highToLow = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
        [randomArray sortUsingDescriptors:@[highToLow]];
        NSLog(@"This should be the same number as above: %@", randomArray[0]);
        
    }
    return 0;
}
