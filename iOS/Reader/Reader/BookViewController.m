//
//  BookViewController.m
//  Reader
//
//  Created by Amir Ghoreshi on 10/18/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import "BookViewController.h"

@interface BookViewController ()

@end

@implementation BookViewController
@synthesize scrollView;
@synthesize textView;
@synthesize finishButton;
@synthesize imageView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
   // scrollView.delegate = self;
    textView.delegate = self;
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"break.png"]];
   


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)pause:(id)sender {
   
    if (finishButton.hidden){
    if ( imageView.hidden ){
        imageView.hidden = NO;
        textView.scrollEnabled = NO;
       
    }
    else if ( !imageView.hidden){
        imageView.hidden = YES;
        textView.scrollEnabled = YES;
    }
    }
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    finishButton.hidden = NO;
     NSLog(@"Finished scrolling");
}


- (IBAction)finishButtonPushed:(id)sender {
    NSLog(@"Pupp Up scrolling");
}
@end
