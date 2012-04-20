//
//  PushNavigationViewController.m
//  PushNavigation
//
//  Created by MagicStudio on 12-4-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "PushNavigationViewController.h"
#define COOKBOOK_PURPLE_COLOR	[UIColor colorWithRed:0.20392f green:0.19607f blue:0.61176f alpha:1.0f]
@implementation PushNavigationViewController
@synthesize label;
-(id)initWithDepth:(int)theDepth{
    self=[super init];
    if(self) depth=theDepth;
    return self;
}
-(void)push{
    PushNavigationViewController *pnvc=[[[PushNavigationViewController alloc] initWithDepth:(depth+1)] autorelease];
    [self.navigationController pushViewController:pnvc animated:YES];
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
-(void)loadView{
    self.view=[[[NSBundle mainBundle] loadNibNamed:@"PushNavigationViewController" owner:self options:nil] lastObject];
    NSString *valueString=[NSString stringWithFormat:@"%d",depth];
    NSString *nextString=[NSString stringWithFormat:@"Push %d",depth+1];
    self.title=[@"level" stringByAppendingString:valueString];
    [label setText:valueString];
    if(depth<6) self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:nextString style:UIBarButtonItemStylePlain target:self action:@selector(push)];
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
