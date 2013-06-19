//
//  DatePicker.m
//  DatePickerDemo
//
//  Created by guihuan on 13-6-4.
//  Copyright (c) 2013年 guihuan. All rights reserved.
//

#import "DatePicker.h"

@implementation DatePicker
@synthesize textField,dp,subView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        textField = [[UITextField alloc] initWithFrame:CGRectMake(60, 152, 160, 30)];
        textField.backgroundColor = [UIColor whiteColor];
        textField.delegate = self;
        [self addSubview:textField];
        
        subView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
        subView.backgroundColor  =[UIColor clearColor];
        subView.tag = 0;
        
        UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(button_Close)];
        NSArray* array = [NSArray arrayWithObject:item];
        
        dp = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 44, 320, 216)];
        [dp setDate:[NSDate date]];
        [dp addTarget:self action:@selector(datechanged:) forControlEvents:UIControlEventValueChanged];
        UIToolbar* toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        toolBar.barStyle = UIBarStyleBlackTranslucent;
        [toolBar sizeToFit];
        [toolBar setItems:array animated:true];
        [subView addSubview:toolBar];
        [subView addSubview:dp];
        
    }
    return self;
}

-(void) datechanged:(id) sender{
    NSDateFormatter* dateMatter = [[NSDateFormatter alloc] init];
    dateMatter.dateFormat = @"yyyy-MM-dd";
    textField.text = [dateMatter stringFromDate: [sender date]];
}

-(void) button_Close
{
    if(subView != nil){
        subView.tag =0;
        [subView removeFromSuperview];
    }
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if(subView.tag ==0){
        subView.tag =1;
        [self.superview addSubview:subView];
    }
    return NO;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
