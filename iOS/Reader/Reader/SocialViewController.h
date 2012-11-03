//
//  SocialViewController.h
//  Reader
//
//  Created by Amir Ghoreshi on 10/17/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocialViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *lastView;
@property(nonatomic, strong) NSOperationQueue *loadImagesOperationQueue;
@property (weak, nonatomic) IBOutlet UIView *topView;

@end
