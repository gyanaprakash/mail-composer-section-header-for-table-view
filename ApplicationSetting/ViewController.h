//
//  ViewController.h
//  ApplicationSetting
//
//  Created by Bsetecip10 on 06/11/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedBackViewController.h"
@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

//*******************************************************************************************************************


@property (weak, nonatomic) IBOutlet UITableView *settingTable;
@property (strong, nonatomic) IBOutlet UITableViewCell *headercell;
@property (strong, nonatomic) IBOutlet UITableViewCell *accountSettingHeader;

//*******************************************************************************************************************

@end

