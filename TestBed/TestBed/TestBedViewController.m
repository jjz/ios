//
//  TestBedViewController.m
//  TestBed
//
//  Created by MagicStudio on 12-4-18.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TestBedViewController.h"
#import <UIKit/UIKit.h>
#define COOKBOOK_PURPLE_COLOR	[UIColor colorWithRed:0.20392f green:0.19607f blue:0.61176f alpha:1.0f]
#define BARBUTTON(TITLE,SELECTOR)  [[[UIBarButtonItem alloc] initWithTitle:TITLE style:UIBarButtonItemStylePlain target:self action:SELECTOR] autorelease];
#define showAlert(format,...) myShowAlert(__LINE__, (char *)__FUNCTION__, format, ##__VA_ARGS__)
void myShowAlert(int line,char *functname, id formatstring,...){
    va_list arglist;
    if(!formatstring) return;
    va_start(arglist, formatstring);
    id outstring=[[[NSString alloc] initWithFormat:formatstring arguments:arglist]autorelease];
    va_end(arglist);
    NSString *filename=[[NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding] lastPathComponent];
    NSString *debugInfo=[NSString stringWithFormat:@"%@:%d\n%s", filename,line,functname];
    UIAlertView *av=[[[UIAlertView alloc] initWithTitle:outstring message:debugInfo delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] autorelease];
    [av show];
    
}

@implementation TestBedViewController
-(void) rightAction:(id)sender{
   // showAlert(@"you pressed the right button");
    
    UIAlertView *av=[[[UIAlertView alloc] initWithTitle:@"提示" message:@"you pressed the right button" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil] autorelease];
    [av show];
}
-(void) leftAction:(id)sender{
    //showAlert(@"you pressed the left button");
    UIAlertView *av=[[[UIAlertView alloc] initWithTitle:@"提示" message:@"you pressed the left button" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil] autorelease];
    [av show];
}
-(void)loadView{
    self.view=[[[NSBundle mainBundle] loadNibNamed:@"TestBedViewController" owner:self options:nil] lastObject];
    self.navigationController.navigationBar.tintColor=COOKBOOK_PURPLE_COLOR;
    self.navigationItem.rightBarButtonItem=BARBUTTON(@"right", @selector(rightAction:));
    //[[[UIBarButtonItem alloc] initWithTitle:@"right" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction:)] autorelease];;
    self.navigationItem.leftBarButtonItem=BARBUTTON(@"left", @selector(leftAction:));
    //[[[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction:)] autorelease];
   
    
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
