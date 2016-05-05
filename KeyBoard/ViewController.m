//
//  ViewController.m
//  KeyBoard
//
//  Created by uniits on 15/1/31.
//  Copyright (c) 2015年 uniits. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * _TextArray;
    UITextField     *currentTextField;           //当前输入框
    int currentTextFieldIndex;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _TextArray = [[NSArray alloc] initWithObjects:_nameField,_dataBirthday,_address, nil];
    
    UIToolbar * keyBoard = [[NSBundle mainBundle] loadNibNamed:@"KeyBoardTool" owner:self options:nil][0];
    

    //set keyboard top toolbar
    _nameField.delegate = self;
    _dataBirthday.delegate = self;
    _address.delegate = self;
    _nameField.inputAccessoryView = keyBoard;
    _dataBirthday.inputAccessoryView = keyBoard;
    _address.inputAccessoryView = keyBoard;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downOneFirstResponder:(UIBarButtonItem *)sender {
    if(currentTextFieldIndex+1<=2)
    {
        UITextField * thisFiled = _TextArray[currentTextFieldIndex+1];
        [thisFiled becomeFirstResponder];
    }
}

- (IBAction)keyBoardExit:(UIBarButtonItem *)sender {
    [self.view endEditing:YES];
    
}

- (IBAction)upOneFirstResponder:(UIBarButtonItem *)sender {
    if(currentTextFieldIndex-1>=0)
    {
        UITextField * thisFiled = _TextArray[currentTextFieldIndex-1];
        [thisFiled becomeFirstResponder];
    }
}



- (void)textFieldDidBeginEditing:(UITextField *)textField{
    //开始编辑时触发，文本字段将成为first responder
     if (textField == _nameField)//当是 “手机号码”输入框时
     {
       currentTextFieldIndex = 0;
       NSLog(@"nameField");
     }
    if (textField == _dataBirthday)//当是 “手机号码”输入框时
    {
        currentTextFieldIndex = 1;
        NSLog(@"_dataBirthday");
    }
    if (textField == _address)//当是 “手机号码”输入框时
    {
        currentTextFieldIndex = 2;
        NSLog(@"_address");
    }
}
@end
