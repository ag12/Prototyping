//
//  SocialTableViewController.m
//  Reader
//
//  Created by Amir Ghoreshi on 10/18/12.
//  Copyright (c) 2012 Amir Ghoreshi. All rights reserved.
//

#import "SocialTableViewController.h"
#import "AFOpenFlowView.h"
#import "Social.h"
@interface SocialTableViewController ()

@end

@implementation SocialTableViewController
@synthesize loadImagesOperationQueue;
@dynamic lastView;
@synthesize socials;
@synthesize socialTableCell;
@synthesize scondView;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    loadImagesOperationQueue = [[NSOperationQueue alloc] init];
    
	NSString *imageName;
	for (int i=1; i < 6; i++) {
		imageName = [[NSString alloc] initWithFormat:@"b%d.jpeg", i];
		[(AFOpenFlowView *)self.scondView setImage:[UIImage imageNamed:imageName] forIndex:i];
		NSLog(@"%d is the index and image %@",i, imageName);
        
	}
	[(AFOpenFlowView *)self.scondView setNumberOfImages:10];
    
    
    socials = [NSMutableArray arrayWithCapacity:20];
    Social *social = [[Social alloc]init];
    social.username = @"Jo Bo";
    social.status = @"Wow! They just made a book about the lord of the rings";
    social.image = [UIImage imageNamed:@"p1.png"];
    [socials addObject:social];
    
    
    social = [[Social alloc]init];
    social.username = @"Kenny Cool";
    social.status = @"I have got to start reading my new book Matilda";
    social.image = [UIImage imageNamed:@"p2.png"];
    [socials addObject:social];

    
    social = [[Social alloc]init];
    social.username = @"Santonas";
    social.status = @"Have just finished HP TGOF";
    social.image = [UIImage imageNamed:@"p3.png"];
    [socials addObject:social];

    
    
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [[self socials] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    SocialTableViewCell *cell = (SocialTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"SocialCell" forIndexPath:indexPath];
    Social *social = [self.socials objectAtIndex:indexPath.row];
    cell.usernameLable.text = social.username;
    cell.statusLabel.text = social.status;
    cell.imageView.image = social.image;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}
- (void)openFlowView:(AFOpenFlowView *)openFlowView selectionDidChange:(int)index{
    
	NSLog(@"%d is selected",index);
    
}

// setting the image 1 as the default pic
- (UIImage *)defaultImage{
    
	return [UIImage imageNamed:@"a1.png"];
}


@end
