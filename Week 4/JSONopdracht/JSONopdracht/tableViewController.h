//
//  tableViewController.h
//  JSONopdracht
//
//  Created by Anh Tran on 19-03-14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableViewController : UITableViewController

@property NSMutableArray *pirates;

-(void)loadJSONData;
-(void)parseJSONData:(id) JSON;
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
@end
