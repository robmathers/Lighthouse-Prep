//
//  AddItemViewController.h
//  List
//
//  Created by Rob Mathers on 2016-08-16.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddItemViewControllerDelegate <NSObject>

- (void)saveNewTodo:(NSString *)todoText;

@end

@interface AddItemViewController : UIViewController

@property (weak, nonatomic) id <AddItemViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *itemTitleField;

@end
