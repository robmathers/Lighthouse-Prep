//
//  Toyota.m
//  Cars
//
//  Created by Rob Mathers on 2016-08-16.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import "Toyota.h"

@implementation Toyota
@synthesize model = _model;

-(instancetype)init {
    self = [super init];
    
    if (self) {
        _model = @"Prius";
    }
    
    return self;
}
@end
