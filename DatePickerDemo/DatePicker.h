//
//  DatePicker.h
//  DatePickerDemo
//
//  Created by guihuan on 13-6-4.
//  Copyright (c) 2013年 guihuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePicker : UIView<UITextFieldDelegate>
{
    UITextField* textField;
    UIDatePicker* dp;
    UIView* subView;
}
@property (nonatomic,retain) UITextField* textField;
@property (nonatomic,retain) UIDatePicker* dp;
@property (nonatomic,retain) UIView* subView;

@end
