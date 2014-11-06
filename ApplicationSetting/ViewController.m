//
//  ViewController.m
//  ApplicationSetting
//
//  Created by Bsetecip10 on 06/11/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *name;
}

@end

@implementation ViewController

//*******************************************************************************************************************

- (void)viewDidLoad
{
    name = [[NSArray alloc]initWithObjects:@"Edit Profile",@"Password",@"Notification Setting",@"Tearms and Conditions",@"Feedback", nil];

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma MARK TABLEVIEW DATASOURCE
//*******************************************************************************************************************

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

//*******************************************************************************************************************

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    [cell.imageView setImage:[UIImage imageNamed:@"Untitled.png"]];
    cell.textLabel.text = [NSString stringWithString:[name objectAtIndex:indexPath.row]];
    return cell;
}

//*******************************************************************************************************************

#pragma MARK TABLEVIEW DELEGATE
//*******************************************************************************************************************

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 0;
    }
    else
    return [name count];
}

//*******************************************************************************************************************

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 60;
    }
    else
        return 40;
}

//*******************************************************************************************************************

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return _headercell;
    }
    else
    {
        return _accountSettingHeader;
    }
    return _headercell;
}


//*******************************************************************************************************************

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 4)
    {
        FeedBackViewController *feedBack = [[FeedBackViewController alloc]initWithNibName:@"FeedBackViewController" bundle:nil];
        [self.navigationController pushViewController:feedBack animated:YES];
    }
    
    
    NSLog(@"%@",[name objectAtIndex:indexPath.row]);
}

//*******************************************************************************************************************

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//*******************************************************************************************************************

@end
