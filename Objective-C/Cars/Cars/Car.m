//
//  Car.m
//  Cars
//
//  Created by Rob Mathers on 2016-08-16.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initWithModel:(NSString *)model {
    self = [super init];
    
    if (self) {
        _model = model;
    }
    return self;
}

- (instancetype)init {
    return [self initWithModel:@""];
}

- (void)drive {
    NSLog(@"%@", self.model);
}

@end
