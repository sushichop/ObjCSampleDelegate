//
//  SenderViewController.h
//  ObjCSampleDelegate
//
//  Created by sushichop on 7/5/15.
//  Copyright (c) 2015 sushichop. All rights reserved.
//

@import UIKit;


@class SenderViewController;

@protocol SenderViewControllerDelegate <NSObject>

@required
- (void)senderViewController:(SenderViewController *)senderViewController didSendRequiredInfo:(NSDictionary *)info;

@optional
- (void)senderViewController:(SenderViewController *)senderViewController didSendOptionalInfo:(NSDictionary *)info;

@end


@interface SenderViewController : UIViewController

@property (nonatomic, weak) id<SenderViewControllerDelegate> delegate;

@end
