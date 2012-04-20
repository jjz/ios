//
//  TabBarViewController.m
//  TabBar
//
//  Created by MagicStudio on 12-4-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TabBarViewController.h"

@implementation TabBarViewController

@synthesize label;
-(TabBarViewController *)initWithBrightness:(int)aBrightness{
    self=[super init];
    brightness=aBrightness;
    self.title=[NSString stringWithFormat:@"%d" ,brightness];
    [self.tabBarItem initWithTitle:self.title image:nil tag:0];
    return self;
}
-(void)loadView{
    self.view=[[[NSBundle mainBundle] loadNibNamed:@"TabBarViewController" owner:self options:nil] lastObject];
    //self.view.backgroundColor=[UIColor colorWithWhite:(brightness/10.0f) alpha:1.0f];
    [label setText:[NSString stringWithFormat:@"%d",brightness]];
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
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
    [self setView:nil];
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
