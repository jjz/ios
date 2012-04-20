//
//  TabBarViewController.h
//  TabBar
//
//  Created by MagicStudio on 12-4-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarViewController : UIViewController {
    UILabel *label;
  
    int brightness;
   
}
 -(TabBarViewController *)initWithBrightness:(int)aBrightness;
@property (nonatomic, retain) IBOutlet UIView *view;

@property (nonatomic, retain) IBOutlet UILabel *label;

@end
