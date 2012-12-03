//
//  ADiPadViewController.m
//  Adesa
//
//  Created by Administrator on 03/12/12.
//  Copyright (c) 2012 Aditi Technologies. All rights reserved.
//

#import "ADiPadViewController.h"
#import "ADiPadSummaryViewController.h"

@interface ADiPadViewController ()

-(IBAction)showSummaryView:(id)sender;

@end

@implementation ADiPadViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(IBAction)showSummaryView:(id)sender
{
    ADiPadSummaryViewController *summaryViewController = [[ADiPadSummaryViewController alloc] initWithNibName:@"ADiPadSummaryViewController" bundle:nil];
    [self.navigationController pushViewController:summaryViewController animated:YES];
    
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

@end
