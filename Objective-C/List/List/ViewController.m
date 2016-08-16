//
//  ViewController.m
//  List
//
//  Created by Rob Mathers on 2016-08-16.
//  Copyright © 2016 Rob Mathers. All rights reserved.
//

#import "ViewController.h"
#import "ListViewCell.h"
#import "TodoItem.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *todoItems;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // Initialize todoItems list
    self.todoItems = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.todoItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ListViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ListViewCell"];
    TodoItem *todo = self.todoItems[indexPath.row];
    cell.titleLabel.text = todo.todoText;
    
    return cell;
}

// UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected row at: %@", indexPath);
}

- (void)saveNewTodo:(NSString *)todoText {
    TodoItem *newTodo = [[TodoItem alloc] init];
    newTodo.todoText = todoText;
    [self.todoItems addObject:newTodo];
    [self.navigationController popViewControllerAnimated:YES];
    [self.tableView reloadData];
}

// Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"addTodoItemSegue"]) {
        [(AddItemViewController *)segue.destinationViewController setDelegate:self];
    }
}


@end
