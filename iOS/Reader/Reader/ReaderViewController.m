//
//  ReaderViewController.m
//  Reader
//
//  Created by Amir Ghoreshi on 10/17/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import "ReaderViewController.h"

@interface ReaderViewController ()

@end

@implementation ReaderViewController
@synthesize book;
@synthesize textLable;
@synthesize textView;
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
    /*textView = [[UITextView alloc] initWithFrame:CGRectMake(0,50,130,80)];
    
    textView.text = book.text;
    
    textView.textColor = [UIColor blackColor];
    
    textView.font = [UIFont fontWithName:@"Arial" size:18];
    
    
    textView.editable = NO;
    
    [textView sizeToFit];
    
    
    [self.view addSubview:textView];
    
    [self.view sendSubviewToBack:textView];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    CGRect frame = textView.frame;
    frame.size.height = textView.contentSize.height;
    textView.frame = frame;*/
    
    
    

    //4
    //CGSize textSize = [dealDescription sizeWithFont:fontNormal constrainedToSize:CGSizeMake(1000, 1000)];
    
    CGRect dealDescRect = CGRectMake(0, 0, self.view.frame.size.width, 22);
    
    textView = [[UITextView alloc] initWithFrame:dealDescRect];
    textView.font = [UIFont fontWithName:@"Arial" size:18];
    textView.editable = NO;
    textView.scrollEnabled = YES;
       
    textView.text = book.text;
    //add the subview to the container
    [self.view addSubview:textView];
    
    //1) after adding the view
    CGRect frame = textView.frame;
    frame.size.height = textView.contentSize.height;
    textView.frame = frame;
         
    CGRect viewRect = self.view.bounds;
    UIScrollView *scrollView = [[UIScrollView alloc]
                                initWithFrame:/*CGRectMake(10,
                                                         22, textView.contentSize.height, 500)*/viewRect];
    
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(300, textView.contentSize.height)];
    [scrollView setBackgroundColor:[UIColor redColor]];

    

    
    [self.view addSubview:scrollView];
    [scrollView addSubview:textView];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 17, 20)];
    [scrollView addSubview:button];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView{
    [super loadView];
}

@end
