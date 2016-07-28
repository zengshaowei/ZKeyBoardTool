//
//  ZKeyBoardTool.m
//  5_18_IAMComing
//
//  Created by ibokan on 16/7/28.
//  Copyright © 2016年 ZSW. All rights reserved.
//

#import "ZKeyBoardTool.h"



@implementation ZKeyBoardTool
-(instancetype)initWithChangeView:(UIView *)view offset:(CGFloat)hight
{
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide) name:UIKeyboardWillHideNotification object:nil];
        self.changeView = view;
        self.hight = hight;
        
    }
    return self;
}

-(void)keyboardWillShow:(NSNotification *)notification
{
    //获取键盘高度
    CGFloat keyboardH = [[notification.userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
    //视图的偏移量：文本框的Y+文本框H-键盘的Y
    self.offset = self.inPutTxt.frame.origin.y  + 30.0 - (self.changeView.frame.size.height - keyboardH);
    //如果偏离量是正的
    NSLog(@"出现时%lf",self.offset);
    if (self.offset>0)
    {
        self.changeView.frame = CGRectMake(0.0f, -self.offset - self.hight, self.changeView.frame.size.width, self.changeView.frame.size.height);
        
    }
}

-(void)keyboardWillHide
{
    NSLog(@"消失时%lf",self.offset);
    if (self.offset>0)
    {
        self.changeView.frame = CGRectMake(0,0, self.changeView.frame.size.width, self.changeView.frame.size.height);
        
    }
}

-(void)registerObsever
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

@end
