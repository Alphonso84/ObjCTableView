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
    CGFloat screenHeight = self.view.frame.size.height;
    CGFloat screenWidth = self.view.frame.size.width;
    // Do any additional setup after loading the view.
    UITableView *tableView = [[UITableView alloc] init];
    tableView.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, screenWidth, screenHeight);
    [tableView registerClass:UITableViewCell.self forCellReuseIdentifier:@"myCell"];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    if (myCell != nil) {
        myCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:@"myCell"];
        myCell.textLabel.text = @"Hello World";
        myCell.detailTextLabel.text = @"job";
        myCell.imageView.image = [UIImage imageNamed:@"person.and.person.fill"];
    }
    
    
    return myCell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

@end
