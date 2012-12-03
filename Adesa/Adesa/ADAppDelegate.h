//
//  ADAppDelegate.h
//  Adesa
//
//  Created by Administrator on 03/12/12.
//  Copyright (c) 2012 Aditi Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ADViewController;
@class ADiPadViewController;

@interface ADAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ADViewController *viewController;

@property (strong, nonatomic) ADiPadViewController *iPadViewController;

@property (strong, nonatomic) UINavigationController *navigationController;

@end
