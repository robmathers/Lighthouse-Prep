//
//  AddItemViewController.m
//  List
//
//  Created by Rob Mathers on 2016-08-16.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import "AddItemViewController.h"

@implementation AddItemViewController

- (IBAction)save:(id)sender {
    [self.delegate saveNewTodo:self.itemTitleField.text];
}
- (IBAction)cancel:(id)sender {
}
@end
