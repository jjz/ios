//
//  ViewController.m
//  TableViewTest
//
//  Created by 家志 姜 on 12-5-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	switch (section) {
		case 0:
			return 15;
			break;
		case 1:
			return 12;
			break;
		case 2:
			return 3;
			break;
		case 3:
			return 1;
			break;
	}
	
	return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	// custom cell only
	if (indexPath.section == 3) {
		static NSString *CellIdentifier = @"CustomCell";
		Cell *cell = (Cell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
		if (cell == nil) {
			NSArray *outlets = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
			
			for (id currentObject in outlets) {
				if ([currentObject isKindOfClass:[UITableViewCell class]]){
					cell =  (Cell *) currentObject;
					break;
				}
			}
		}
		cell.myLabel.text = @"Some text";
		return cell;
	}
	
	// end of custom cell
	
	NSLog(@"cellForRowAtIndexPath called");
	static NSString *CellIdentifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) { NSLog(@"newCell");
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
	}
	
	switch (indexPath.section) {
		case 0:
			cell.text = [NSString stringWithFormat:@"Happy Cell #%i",indexPath.row];;
			break;
		case 1:
			cell.text = [NSString stringWithFormat:@"Sad Cell #%i",indexPath.row];;
			break;
		case 2:
			cell.text = [dataForTable objectAtIndex:indexPath.row];
	}
	return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	switch (section) {
		case 0:
			return @"Happy rows";
			break;
		case 1:
			return @"Sad rows";
			break;
		case 2:
			return @"Dynamic rows";
			break;
		case 3:
			return @"Custom cell";
			break;
	}
	return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Cell pressed" message:[NSString stringWithFormat:@"Cell #%i in section #%i",indexPath.row,indexPath.section] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alert show];
	[alert release];
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
	if (indexPath.section == 3) return UITableViewCellAccessoryNone;
	switch (indexPath.row) {
		case 0:
			return UITableViewCellAccessoryCheckmark;
			break;
		case 1:
			return UITableViewCellAccessoryDetailDisclosureButton;
			break;
		case 2:
			return UITableViewCellAccessoryDisclosureIndicator;
			break;
            
	}
	return UITableViewCellAccessoryNone;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	if (indexPath.row == 2) return 90;
	else if (indexPath.section == 3) return 95;
	return 45;
}
- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
	if (indexPath.row == 3) return 2;
	return 0;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Accessory Button pressed" message:[NSString stringWithFormat:@"Accessory Button for Cell #%i in section #%i",indexPath.row,indexPath.section] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alert show];
	[alert release];
}
/*
 - (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
 NSMutableArray *index = [[NSMutableArray alloc] initWithObjects:@"A",@"B",@"C",@"D",nil];
 return index;
 }*/

//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
//	return @"© www.chris-software.com";
//}

- (void)viewDidLoad {
	dataForTable = [[NSMutableArray alloc] initWithObjects:
					@"First row",
					@"Second row",
					@"Third row",
					nil];
	[dataForTable retain];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
	[dataForTable release];
	[myTable release];
}

@end




























