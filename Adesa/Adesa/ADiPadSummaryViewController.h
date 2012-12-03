//
//  ADiPadSummaryViewController.h
//  Adesa
//
//  Created by Administrator on 03/12/12.
//  Copyright (c) 2012 Aditi Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ADiPadSummaryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIView *categoryContentView;
@property (strong, nonatomic) IBOutlet UIView *optionalPhotosContentView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@end
