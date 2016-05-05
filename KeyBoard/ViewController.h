//
//  ViewController.h
//  KeyBoard
//
//  Created by uniits on 15/1/31.
//  Copyright (c) 2015年 uniits. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *dataBirthday;
@property (weak, nonatomic) IBOutlet UITextField *address;
- (IBAction)downOneFirstResponder:(UIBarButtonItem *)sender;
- (IBAction)keyBoardExit:(UIBarButtonItem *)sender;
- (IBAction)upOneFirstResponder:(UIBarButtonItem *)sender;
@end

