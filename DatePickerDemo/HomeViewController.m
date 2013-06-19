//
//  HomeViewController.m
//  DatePickerDemo
//
//  Created by guihuan on 13-6-4.
//  Copyright (c) 2013年 guihuan. All rights reserved.
//

#import "HomeViewController.h"
#import "DatePicker.h"
@interface HomeViewController ()

@end

@implementation HomeViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        DatePicker* dp = [[DatePicker alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
        self.view.backgroundColor = [UIColor clearColor];
        [self.view addSubview:dp];
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
