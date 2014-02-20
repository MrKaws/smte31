//
//  AboutViewController.h
//  glow2013
//
//  Created by Anh Tran on 20-02-14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController

- (IBAction)btnShowTextfield:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextField *tbInfo;


@end
