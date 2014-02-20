//
//  EasterEggViewController.m
//  glow2013
//
//  Created by Anh Tran on 20-02-14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

#import "EasterEggViewController.h"

@interface EasterEggViewController ()


@end

@implementation EasterEggViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
	// Do any additional setup after loading the view.
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)btnClose:(UIButton *)sender {
        [self dismissViewControllerAnimated:YES completion:nil];
}
@end
