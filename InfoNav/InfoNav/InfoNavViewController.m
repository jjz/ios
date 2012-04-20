//
//  InfoNavViewController.m
//  InfoNav
//
//  Created by MagicStudio on 12-4-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "InfoNavViewController.h"
#import "InfoViewController.h"
#define COOKBOOK_PURPLE_COLOR	[UIColor colorWithRed:0.20392f green:0.19607f blue:0.61176f alpha:1.0f]
@implementation InfoNavViewController
-(void)segmentAction:(UISegmentedControl *) sender{
    [label setText:[NSString stringWithFormat:@"%d",sender.selectedSegmentIndex+1]];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
-(void)info{
    int segment=[(UISegmentedControl *)self.navigationItem.titleView selectedSegmentIndex];
    int styles[3]={UIModalTransitionStyleCoverVertical,UIModalTransitionStyleCrossDissolve,UIModalTransitionStyleFlipHorizontal};
    InfoViewController *ivc=[[[InfoViewController alloc] init]autorelease];
    ivc.modalTransitionStyle=styles[segment];
    [self presentModalViewController:ivc animated:YES];
    
}
-(void)loadView{
    self.view=[[[NSBundle mainBundle] loadNibNamed:@"InfoNavViewController" owner:self options:nil] lastObject];
    self.navigationController.navigationBar.tintColor=COOKBOOK_PURPLE_COLOR;
    self.title=@"Main view";
    self.navigationItem.rightBarButtonItem=[[[UIBarButtonItem alloc] initWithTitle:@"info" style:UIBarButtonItemStylePlain target:self action:@selector(info)] autorelease];
    UISegmentedControl *seg=[[[UISegmentedControl alloc] initWithItems:[@"slide fade flip" componentsSeparatedByString:@" "]] autorelease];
    seg.segmentedControlStyle=UISegmentedControlStyleBar;
    seg.selectedSegmentIndex=0;
   [seg addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView=seg;
}
#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
