//
//  SenderViewController.m
//  ObjCSampleDelegate
//
//  Created by sushichop on 7/5/15.
//  Copyright (c) 2015 sushichop. All rights reserved.
//

#import "SenderViewController.h"

@interface SenderViewController ()

@end

@implementation SenderViewController

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


#pragma mark - IBAction

- (IBAction)goBack:(id)sender
{
    // Xcode checks the method is implemented or not.
    [self.delegate senderViewController:self didSendRequiredInfo:@{@"message": @"this is required", @"score": @3}];
    
    // You have to check the method is implemented or not.
    if ([self.delegate respondsToSelector:@selector(senderViewController:didSendOptionalInfo:)]) {
        [self.delegate senderViewController:self didSendOptionalInfo:@{@"message": @"this is optional", @"score": @100}];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
