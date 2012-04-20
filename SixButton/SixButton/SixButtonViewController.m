//
//  SixButtonViewController.m
//  SixButton
//
//  Created by MagicStudio on 12-4-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "SixButtonViewController.h"
#define COOKBOOK_PURPLE_COLOR	[UIColor colorWithRed:0.20392f green:0.19607f blue:0.61176f alpha:1.0f]
#define BARBUTTON(TITLE, SELECTOR) 	[[[UIBarButtonItem alloc] initWithTitle:TITLE style:UIBarButtonItemStylePlain target:self action:SELECTOR] autorelease]


@implementation SixButtonViewController
@synthesize label;
NSArray *allSubviews(UIView *aView){
    NSArray *results=[aView subviews];
    for(UIView *eachView in [aView subviews]){
        NSArray *riz=allSubviews(eachView);
        if (riz) results=[results arrayByAddingObjectsFromArray:riz];
    }
    return results;
}
-(void)segmentAction:(UISegmentedControl *)sender{
    [label setText:[NSString stringWithFormat:@"%0d",sender.selectedSegmentIndex+1]];
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
-(void)loadView{
    self.view=[[[NSBundle mainBundle] loadNibNamed:@"SixButtonViewController" owner:self options:nil] lastObject];
    self.navigationController.navigationBar.tintColor=COOKBOOK_PURPLE_COLOR;
    NSArray *buttonNames=[NSArray arrayWithObjects:@"one",@"two",@"three",@"four",@"five",@"six", nil];
    UISegmentedControl *segmentedControl=[[UISegmentedControl alloc] initWithItems:buttonNames];
    segmentedControl.segmentedControlStyle=UISegmentedControlStyleBar;
    [segmentedControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
#define TESTWITHMOMENTRAY    1
#if TESTWITHMOMENTRAY==1
    segmentedControl.momentary=YES;
#else
    segmentedControl.momentary=NO;
    segmentedControl.selectedSegmentIndex=0;
    
#endif
    CFShow(allSubviews(segmentedControl));
    self.navigationItem.titleView=segmentedControl;
    [segmentedControl release];
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
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [label release];
    [super dealloc];
}
@end
