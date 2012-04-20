//
//  PushNavigationViewController.h
//  PushNavigation
//
//  Created by MagicStudio on 12-4-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PushNavigationViewController : UIViewController {
    UILabel *label;
    int depth;
}

@property (nonatomic, retain) IBOutlet UILabel *label;

@end
