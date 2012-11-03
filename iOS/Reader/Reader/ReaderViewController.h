//
//  ReaderViewController.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/17/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface ReaderViewController : UIViewController
@property (nonatomic, strong) Book *book;
@property (weak, nonatomic) IBOutlet UILabel *textLable;
@property (nonatomic, strong) UITextView *textView;
@end
