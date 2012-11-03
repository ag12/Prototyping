//
//  SocialTableViewCell.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/18/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocialTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel *usernameLable;
@property (nonatomic, strong) IBOutlet UILabel *statusLabel;
@property (nonatomic, strong) IBOutlet UIImageView
*imageView;

@property (nonatomic, copy) NSString *text;
@end

