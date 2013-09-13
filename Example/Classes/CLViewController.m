//
//  CLViewController.m
//  CLTableWithFooterViewController
//
//  Created by Chris Ledet on 7/5/13.
//  Copyright (c) 2013 Chris Ledet. All rights reserved.
//

#import "CLViewController.h"

#define MAX_CELL_COUNT 15

@implementation CLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.footerImage = [UIImage imageNamed:@"Footer.png"];

    // Customize table view
    self.tableView.backgroundColor = [UIColor colorWithRed:237/255.0 green:97/255.0 blue:97/255.0 alpha:1.0];
    self.tableView.separatorColor = [UIColor clearColor];
}

#pragma mark UITableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return MAX_CELL_COUNT + 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CLTableCell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.textLabel.textColor = [UIColor whiteColor];
    }

    if (indexPath.section < MAX_CELL_COUNT) {
        cell.textLabel.text = [NSString stringWithFormat:@"Cell #%d", indexPath.section];
    } else {
        cell.textLabel.text = @"";
    }

    return cell;
}

@end
