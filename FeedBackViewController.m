//
//  FeedBackViewController.m
//  ApplicationSetting
//
//  Created by Bsetecip10 on 06/11/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import "FeedBackViewController.h"

@interface FeedBackViewController ()

@end

@implementation FeedBackViewController

//*******************************************************************************************************************

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

//*******************************************************************************************************************

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//*******************************************************************************************************************

- (IBAction)buttonAction:(UIButton *)sender
{
   
    UIButton *button = (UIButton *)sender;
    if (button.tag == 1) {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    else if (button.tag == 2)
    {
        MFMailComposeViewController *comp=[[MFMailComposeViewController alloc]init];
        [comp setMailComposeDelegate:self];
        if([MFMailComposeViewController canSendMail])
        {
            [comp setToRecipients:[NSArray arrayWithObjects:self.toMailTextFld.text , nil]];
            [comp setCcRecipients:[NSArray arrayWithObjects:self.ccMailTextField.text, nil]];
            [comp setSubject:self.subjectMailTextFld.text];
            [comp setMessageBody:self.messageBodyTextView.text isHTML:NO];
            [comp setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
            [self popoverPresentationController];
        }
        else
        {
            UIAlertView *alrt=[[UIAlertView alloc]initWithTitle:@"Please check your" message:@"internet connection" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alrt show];
            
        }
    }
}

//*******************************************************************************************************************

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    if(error)
    {
        UIAlertView *alrt=[[UIAlertView alloc]initWithTitle:@"Please check your" message:@"internet connection" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alrt show];
    }
    else
    {
       
    }
    
}
@end
