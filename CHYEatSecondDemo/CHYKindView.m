//
//  CHYKindView.m
//  CHYEatSecondDemo
//
//  Created by csdc on 2017/6/8.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "CHYKindView.h"

@interface CHYKindView ()

@end

@implementation CHYKindView

-(id)initWithFrame:(CGRect)frame title:(NSString *)title imageStr:(NSString *)imageStr{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width/2-22, 15, 44, 44)];
        imageView.image = [UIImage imageNamed:imageStr];
        [self addSubview:imageView];
        
        
        UILabel *titleLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 15+44, frame.size.width, 20)];
        titleLable.text = title;
        titleLable.textAlignment = NSTextAlignmentCenter;
        titleLable.font = [UIFont systemFontOfSize:13];
        [self addSubview:titleLable];
    }
    return self;
}   
@end
