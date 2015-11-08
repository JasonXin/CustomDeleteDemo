//
//  TableViewController.m
//  LOL_app
//
//  Created by Jason on 15/11/8.
//  Copyright © 2015年 JasoneIo. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCell.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[CustomCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.rowHeight = 100;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"text_%zd",indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"BtnClick_%zd",indexPath.row);
}

@end
