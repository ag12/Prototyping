//
//  SocialTableViewController.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/18/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialTableViewCell.h"
@interface SocialTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIView *lastView;
@property(nonatomic, strong) NSOperationQueue *loadImagesOperationQueue;
@property (nonatomic, strong) SocialTableViewCell *socialTableCell;
@property (weak, nonatomic) IBOutlet UIView *scondView;

@property (nonatomic, strong) NSMutableArray *socials;
@end
