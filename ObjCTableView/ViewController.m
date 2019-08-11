//
//  ViewController.m
//  ObjCTableView
//
//  Created by user on 8/8/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITableView *tableView = [[UITableView alloc] init];
    tableView.frame = CGRectMake(0, 400, 400, 800);
    [tableView registerClass:UITableViewCell.self forCellReuseIdentifier:@"myCell"];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    myCell.textLabel.text = @"Hello World";
    myCell.imageView.image = [UIImage imageNamed:@"person.and.person.fill"];
    return myCell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

@end
