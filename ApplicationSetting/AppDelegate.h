//
//  AppDelegate.h
//  ApplicationSetting
//
//  Created by Bsetecip10 on 06/11/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

//*******************************************************************************************************************

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) ViewController *settingview;
@property (nonatomic, retain) UINavigationController*navigation;

//*******************************************************************************************************************

@end

