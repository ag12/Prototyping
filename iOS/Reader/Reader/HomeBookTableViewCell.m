//
//  HomeBookTableViewCell.m
//  Reader
//
//  Created by Amir Ghoreshi on 10/17/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import "HomeBookTableViewCell.h"

@implementation HomeBookTableViewCell
@synthesize titleLabel;
@synthesize authorLabel;
@synthesize imageView;
@synthesize text;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
