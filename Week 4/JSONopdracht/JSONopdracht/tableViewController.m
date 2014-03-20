//
//  tableViewController.m
//  JSONopdracht
//
//  Created by Anh Tran on 19-03-14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

#import "tableViewController.h"
#import "AFNetworking.h"
#import "Pirate.h"
#import "detailsViewController.h"

@interface tableViewController ()

@end

@implementation tableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pirates = [[NSMutableArray alloc]init];
    [self loadJSONData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadJSONData
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/x-javascript"];
    [manager GET:@"http://athena.fhict.nl/users/i886625/pirates.json" parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject){
        NSLog(@"JSON: %@", responseObject);
        [self parseJSONData: responseObject];
    }
         failure:^(AFHTTPRequestOperation *operation, NSError *error){
             NSLog(@"Error: %@", error);
         }];
}

-(void)parseJSONData:(id) JSON
{
    for(NSDictionary* dict in JSON){
        Pirate *pirate = [[Pirate alloc]init];
        pirate.name = [dict objectForKey:@"name"];
        pirate.life = [dict objectForKey:@"life"];
        pirate.countryOfOrigin = [dict objectForKey:@"country_of_origin"];
        pirate.active = [dict objectForKey:@"years_active"];
        pirate.comments = [dict objectForKey:@"comments"];
        
        [self.pirates addObject:pirate];
    }
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.pirates.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Get the cell. Note that this name is the same as in the storyboard
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //Set the correct name in the cell.
    //Do so by looking up the row in indexpath and choosing the same element in the array
    NSInteger currentRow = indexPath.row;
    Pirate * currentPirate = [self.pirates objectAtIndex:currentRow];
    
    NSString *textForCell = currentPirate.name;
    
    //Set the text in the cell
    cell.textLabel.text = textForCell;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //Find the selected pirate
    NSIndexPath *selectedRow = [self.tableView indexPathForSelectedRow];
    Pirate *selectedPirate =  [self.pirates objectAtIndex:selectedRow.row];
    //Pass the selected pirate to the next viewcontroller
    detailsViewController *controller = segue.destinationViewController;
    controller.selectedPirate = selectedPirate;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
