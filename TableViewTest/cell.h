//
//  Cell.h
//  TableViewTest
//
//  Created by 家志 姜 on 12-5-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell : UITableViewCell
{
    __weak IBOutlet UILabel *label;
}

- (IBAction)sliderChanged:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *myLabel;
@end
