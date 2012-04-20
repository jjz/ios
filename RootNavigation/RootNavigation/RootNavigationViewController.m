//
//  RootNavigationViewController.m
//  RootNavigation
//
//  Created by MagicStudio on 12-4-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "RootNavigationViewController.h"
#define COOKBOOK_PURPLE_COLOR	[UIColor colorWithRed:0.20392f green:0.19607f blue:0.61176f alpha:1.0f]
@implementation RootNavigationViewController
@synthesize label;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
-(id) initWithDepth:(int)theDepth{
    self=[super init];
    if(self) dept=theDepth;
    return self;
}
-(void)doPush:(id)nc{
    [nc pushViewController:[[RootNavigationViewController alloc] initWithDepth:dept+1] animated:YES];
}
-(void) push{
    if(dept<2){
        [self.navigationController pushViewController:[[RootNavigationViewController alloc] initWithDepth:(dept+1)] animated:YES];
        return;
    }
    [self.navigationController pushViewController:[[RootNavigationViewController alloc]initWithDepth:dept+1] animated:YES];
    [self performSelector:@selector(doPush:) withObject:self.navigationController afterDelay:0.1f];
    [[self.navigationController topViewController] autorelease];
    [self.navigationController popViewControllerAnimated:NO];
    [[self.navigationController topViewController] autorelease];
    [self.navigationController popViewControllerAnimated:NO];
}
-(void)loadView{
    self.view=[[[NSBundle mainBundle] loadNibNamed:@"RootNavigationViewController" owner:self options:nil] lastObject];
    self.navigationController.navigationBar.tintColor=COOKBOOK_PURPLE_COLOR;
    NSString *valueString=[NSString stringWithFormat:@"%d",dept];
    NSString *nextString = [NSString stringWithFormat:@"Push %d", dept + 1];
    if(dept>1){
        self.title=[@"level" stringByAppendingString:valueString];
        
    }else
        self.title=@"Root level";
    [label setText:valueString];
    if(dept<3)self.navigationItem.rightBarButtonItem=[[[UIBarButtonItem alloc]initWithTitle:nextString style:UIBarButtonItemStylePlain target:self action:@selector(push)] autorelease];
    
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
