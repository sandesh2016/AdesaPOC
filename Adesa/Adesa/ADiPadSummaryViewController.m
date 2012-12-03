//
//  ADiPadSummaryViewController.m
//  Adesa
//
//  Created by Administrator on 03/12/12.
//  Copyright (c) 2012 Aditi Technologies. All rights reserved.
//

#import "ADiPadSummaryViewController.h"

@interface ADiPadSummaryViewController ()

-(IBAction)segementSelected:(id)sender;
-(void)setupContentViewForScrollView;

@end

@implementation ADiPadSummaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)segementSelected:(id)sender
{
    UISegmentedControl *segmentControl = sender;
    NSLog(@"Selected - %i",segmentControl.selectedSegmentIndex);
    if (segmentControl.selectedSegmentIndex==1) {
        self.segment.selectedSegmentIndex = 1;
        [UIView beginAnimations:@"" context:nil];
        [UIView setAnimationDuration:0.8];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.scrollView cache:NO];
        [self.categoryContentView removeFromSuperview];
        [self.scrollView addSubview:self.optionalPhotosContentView];
        self.scrollView.contentSize = CGSizeMake(self.optionalPhotosContentView.frame.size.width, self.optionalPhotosContentView.frame.size.height);
        [UIView commitAnimations];
        
    }else{
        self.segment.selectedSegmentIndex = 0;
        [UIView beginAnimations:@"" context:nil];
        [UIView setAnimationDuration:0.8];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.scrollView cache:NO];
        [self.optionalPhotosContentView removeFromSuperview];
        [self.scrollView addSubview:self.categoryContentView];
        self.scrollView.contentSize = CGSizeMake(self.categoryContentView.frame.size.width, self.categoryContentView.frame.size.height);
        [UIView commitAnimations];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupContentViewForScrollView];
    // Do any additional setup after loading the view from its nib.
}

-(void)setupContentViewForScrollView
{
    self.segment.selectedSegmentIndex = 0;
    [self.scrollView addSubview:self.categoryContentView];
    self.scrollView.contentSize = CGSizeMake(self.categoryContentView.frame.size.width, self.categoryContentView.frame.size.height);
    
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (
            interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
            interfaceOrientation == UIInterfaceOrientationLandscapeRight
            );
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setScrollView:nil];
    [self setCategoryContentView:nil];
    [self setOptionalPhotosContentView:nil];
    [self setSegment:nil];
    [super viewDidUnload];
}
@end
