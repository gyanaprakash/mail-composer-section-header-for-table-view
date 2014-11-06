//
//  FeedBackViewController.h
//  ApplicationSetting
//
//  Created by Bsetecip10 on 06/11/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

//*******************************************************************************************************************

@interface FeedBackViewController : UIViewController <MFMailComposeViewControllerDelegate>

//*******************************************************************************************************************

@property (weak, nonatomic) IBOutlet UITextField *toMailTextFld;
@property (weak, nonatomic) IBOutlet UITextField *ccMailTextField;
@property (weak, nonatomic) IBOutlet UITextField *subjectMailTextFld;
@property (weak, nonatomic) IBOutlet UITextView *messageBodyTextView;

//*******************************************************************************************************************

- (IBAction)buttonAction:(UIButton *)sender;

//*******************************************************************************************************************

@end
