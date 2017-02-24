//
//  ViewController.m
//  JsInvoke
//
//  Created by jjz on 8/18/16.
//  Copyright © 2016 jjz. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>



@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];


    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gotoJSInvokeOC:(id)sender {
    [self  performSegueWithIdentifier:@"gotoJsInvokeOC" sender:self];
}

@end
