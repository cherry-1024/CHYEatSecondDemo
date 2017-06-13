//
//  CHYActivityModel.h
//  CHYEatSecondDemo
//
//  Created by csdc on 2017/6/7.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHYActivityModel : NSObject

@property(nonatomic, strong) UIImage *leftIcon;//活动图片
@property(nonatomic, strong) UIImage *rightIcon;//活动图片
@property(nonatomic, strong) NSString *leftTitle;//活动标题
@property(nonatomic, strong) NSString *rightTitle;//活动标题
@property(nonatomic, strong) NSString *leftDescrible;//活动描述
@property(nonatomic, strong) NSString *rightDescrible;//活动描述

@end
