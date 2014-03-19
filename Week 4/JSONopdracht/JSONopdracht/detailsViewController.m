//
//  detailsViewController.m
//  JSONopdracht
//
//  Created by Anh Tran on 19-03-14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

#import "detailsViewController.h"

@interface detailsViewController ()

@end

@implementation detailsViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    self.lblName = self.selectedPirate.name;
    self.lblLife = self.selectedPirate.life;
    self.lblCountry = self.selectedPirate.countryOfOrigin;
    self.lblYears = self.selectedPirate.active;
    self.tvComments = self.selectedPirate.comments;
}

@end
