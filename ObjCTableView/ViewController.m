//
//  ViewController.m
//  ObjCTableView
//
//  Created by user on 8/8/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) NSMutableArray *family;

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

- (void)viewWillAppear:(BOOL)animated {
    
    self.family = self.createArray;
}

- (NSMutableArray*)createArray {
    NSMutableArray *family = [[NSMutableArray alloc] init];
    [family addObject:@"Alphonso"];
    [family addObject:@"Chelsea"];
    [family addObject:@"Danielle"];
    [family addObject:@"Joseph"];
    [family addObject:@"Aaron"];
    [family addObject:@"Ashley"];
    
    return family;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    if (myCell != nil) {
        myCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                        reuseIdentifier:@"myCell"];
    }
    myCell.textLabel.text = _family[indexPath.row];
    myCell.detailTextLabel.text = @"job";
    myCell.imageView.image = [UIImage imageNamed:@"person.and.person.fill"];
    
    return myCell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

@end
