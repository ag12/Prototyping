//
//  HomeViewController.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/17/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeBookTableViewCell.h"
#import "ReaderViewController.h"

@interface HomeViewController : UITableViewController <UIAlertViewDelegate>
@property (nonatomic, strong) NSMutableArray *books;
@property (nonatomic, strong) HomeBookTableViewCell *homeBookCell;
@property (nonatomic, strong) ReaderViewController *readerViewController;
@end
