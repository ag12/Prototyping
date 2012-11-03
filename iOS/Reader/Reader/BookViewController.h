//
//  BookViewController.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/18/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookViewController : UIViewController <UIScrollViewDelegate>
- (IBAction)back:(id)sender;
- (IBAction)pause:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *finishButton;
- (IBAction)finishButtonPushed:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
