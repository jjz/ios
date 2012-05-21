//
//  ViewController.h
//  TableViewTest
//
//  Created by 家志 姜 on 12-5-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cell.h"
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    __weak IBOutlet UITableView *myTable;
    
    NSMutableArray * dataForTable;

}

@end
