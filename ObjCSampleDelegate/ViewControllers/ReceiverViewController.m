//
//  ReceiverViewController.m
//  ObjCSampleDelegate
//
//  Created by sushichop on 7/5/15.
//  Copyright (c) 2015 sushichop. All rights reserved.
//

#import "ReceiverViewController.h"
#import "SenderViewController.h"

@interface ReceiverViewController () <SenderViewControllerDelegate>

@end

@implementation ReceiverViewController

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


#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SenderView"]) {
        SenderViewController *senderViewController = (SenderViewController *)segue.destinationViewController;
        senderViewController.delegate = self;
    }
}


#pragma mark - SenderViewControllerDelagate

- (void)senderViewController:(SenderViewController *)senderViewController didSendRequiredInfo:(NSDictionary *)info
{
    NSLog(@"info: %@", info);
}

- (void)senderViewController:(SenderViewController *)senderViewController didSendOptionalInfo:(NSDictionary *)info
{
    NSLog(@"info: %@", info);
}


@end
