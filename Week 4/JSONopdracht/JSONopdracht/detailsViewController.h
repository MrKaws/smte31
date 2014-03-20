//
//  detailsViewController.h
//  JSONopdracht
//
//  Created by Anh Tran on 19-03-14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pirate.h"

@interface detailsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblLife;
@property (strong, nonatomic) IBOutlet UILabel *lblYears;
@property (strong, nonatomic) IBOutlet UILabel *lblCountry;
@property (strong, nonatomic) IBOutlet UITextView *tvComments;
- (IBAction)btnBack:(id)sender;
@property Pirate *selectedPirate;
-(void)viewDidAppear:(BOOL)animated;
@end
