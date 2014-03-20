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
    self.lblName.text = @"";
    self.lblLife.text = @"";
    self.lblCountry.text = @"";
    self.lblYears.text = @"";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    self.lblName.text = self.selectedPirate.name;
    self.lblLife.text = self.selectedPirate.life;
    self.lblYears.text = self.selectedPirate.active;
    self.lblCountry.text = self.selectedPirate.countryOfOrigin;
    self.tvComments.text = self.selectedPirate.comments;
}

- (IBAction)btnBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
