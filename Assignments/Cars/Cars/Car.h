//
//  Car.h
//  Cars
//
//  Created by Rob Mathers on 2016-08-16.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (strong, nonatomic) NSString* model;

- (instancetype)initWithModel:(NSString *)model;
- (instancetype)init;

- (void)drive;

@end
