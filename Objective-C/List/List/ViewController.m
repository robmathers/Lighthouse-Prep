//
//  ViewController.m
//  List
//
//  Created by Rob Mathers on 2016-08-16.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import "ViewController.h"
#import "ListViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ListViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ListViewCell"];
    
    cell.titleLabel.text = @"My Title";
    
    return cell;
}

// UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected row at: %@", indexPath);
}

@end
