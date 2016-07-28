//
//  ZKeyBoardTool.h
//  5_18_IAMComing
//
//  Created by ibokan on 16/7/28.
//  Copyright © 2016年 ZSW. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ZKeyBoardTool : NSObject

@property (nonatomic,assign)   CGFloat offset;
@property (nonatomic,strong)  UIView *inPutTxt;
@property (nonatomic,assign)  CGFloat hight;

@property (nonatomic,strong)UIView *changeView;

-(instancetype)initWithChangeView:(UIView *)view offset:(CGFloat)hight;
@end
