//
//  HomeBookTableViewCell.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/17/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeBookTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UILabel *authorLabel;
@property (nonatomic, strong) IBOutlet UIImageView
*imageView;
@property (nonatomic, strong) IBOutlet UIProgressView *progressView;
@property (nonatomic, copy) NSString *text;
@end
