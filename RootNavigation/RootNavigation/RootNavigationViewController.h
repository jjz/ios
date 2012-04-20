//
//  RootNavigationViewController.h
//  RootNavigation
//
//  Created by MagicStudio on 12-4-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootNavigationViewController : UIViewController {
    UILabel *label;
    int dept;
    
}
-(id) initWithDepth:(int)theDepth;
@property (nonatomic, retain) IBOutlet UILabel *label;

@end
