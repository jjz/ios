//
//  JSInvokeOCViewController.h
//  JsInvoke
//
//  Created by jjz on 8/18/16.
//  Copyright © 2016 jjz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>
@protocol JSNativeExport<JSExport>
JSExportAs(queryUserFromDB,
           -(void)queryUserFromNaive:(NSString*)name);

@end

@interface JSInvokeOCViewController : UIViewController<UIWebViewDelegate,JSNativeExport>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (strong,nonatomic)JSContext *context;
@end
