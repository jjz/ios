//
//  JSInvokeOCViewController.m
//  JsInvoke
//
//  Created by jjz on 8/18/16.
//  Copyright © 2016 jjz. All rights reserved.
//

#import "JSInvokeOCViewController.h"

@interface JSInvokeOCViewController ()

@end

@implementation JSInvokeOCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webView setDelegate:self];
    // Do any additional setup after loading the view.
    NSString * path=[[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"JSCALLOC.html"];
    NSURLRequest * request=[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    self.context=[webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    self.context[@"oc"] = self;
}
-(void)queryUserFromNaive:(NSString *)name{
    NSLog(@"queryUserFromNaive %@",name);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
