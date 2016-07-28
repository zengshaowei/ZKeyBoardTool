//
//  ViewController.m
//  KeyboardTool
//
//  Created by ibokan on 16/7/28.
//  Copyright © 2016年 ZSW. All rights reserved.
//

#import "ViewController.h"
#import "ZKeyBoardTool.h"
@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;
@property (nonatomic,strong)ZKeyBoardTool *tool;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.tool = [[ZKeyBoardTool alloc]initWithChangeView:self.view offset:60];
    
    
    //self.tool.inPutTxt = self.txt2;
    self.txt1.delegate = self;
    self.txt2.delegate = self;
}


-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.tool.inPutTxt = textField;
}




@end
