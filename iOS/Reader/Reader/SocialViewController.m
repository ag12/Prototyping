//
//  SocialViewController.m
//  Reader
//
//  Created by Amir Ghoreshi on 10/17/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import "SocialViewController.h"
#import "AFOpenFlowView.h"
@interface SocialViewController ()

@end

@implementation SocialViewController
@synthesize loadImagesOperationQueue;
@synthesize lastView;
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
    loadImagesOperationQueue = [[NSOperationQueue alloc] init];
    
	NSString *imageName;
	for (int i=1; i < 5; i++) {
		imageName = [[NSString alloc] initWithFormat:@"a%d.png", i];
		[(AFOpenFlowView *)self.lastView setImage:[UIImage imageNamed:imageName] forIndex:i];
		NSLog(@"%d is the index and image %@",i, imageName);
        
	}
	[(AFOpenFlowView *)self.lastView setNumberOfImages:10];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)openFlowView:(AFOpenFlowView *)openFlowView selectionDidChange:(int)index{
    
	NSLog(@"%d is selected",index);
    
}

// setting the image 1 as the default pic
- (UIImage *)defaultImage{
    
	return [UIImage imageNamed:@"a1.png"];
}

@end
