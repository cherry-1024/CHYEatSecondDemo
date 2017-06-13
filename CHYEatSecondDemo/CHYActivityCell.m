//
//  CHYActivityCell.m
//  CHYEatSecondDemo
//
//  Created by csdc on 2017/6/7.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "CHYActivityCell.h"
#import "CHYActivityModel.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface CHYActivityCell ()
{
    UIImageView *_leftImageView;
    UIImageView *_rightImageView;
    UILabel *_leftTitleLabel;
    UILabel *_rightTitleLabel;
    UILabel *_leftDescribleLabel;
    UILabel *_rightDescribleLabel;

}

@end

@implementation CHYActivityCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier addData:(CHYActivityModel *)activityModel{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        //左边的图片
        _leftImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 40, 40)];
        _leftImageView.image = activityModel.leftIcon;
        [self.contentView addSubview:_leftImageView];
        
        //左边的标题
        _leftTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50+10, 0, SCREENWIDTH-60, 30)];
        _leftTitleLabel.text = activityModel.leftTitle;
        _leftTitleLabel.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_leftTitleLabel];
        
        //左边的文本
        _leftDescribleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 30, SCREENWIDTH-60, 20)];
        _leftDescribleLabel.text = activityModel.leftDescrible;
        _leftDescribleLabel.font = [UIFont systemFontOfSize:12];
        _leftDescribleLabel.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:_leftDescribleLabel];
        
        //右边的图片
        _rightImageView = [[UIImageView alloc] initWithFrame:CGRectMake(200, 5, 40, 40)];
        _rightImageView.image = activityModel.rightIcon;
        [self.contentView addSubview:_rightImageView];
        
        //右边的标题
        _rightTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(SCREENWIDTH-120, 0, 100, 30)];
        _rightTitleLabel.text = activityModel.rightTitle;
        _rightTitleLabel.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_rightTitleLabel];
        
        //右边的文本
        _rightDescribleLabel = [[UILabel alloc] initWithFrame:CGRectMake(SCREENWIDTH-120, 30, 100, 20)];
        _rightDescribleLabel.text = activityModel.rightDescrible;
        _rightDescribleLabel.font = [UIFont systemFontOfSize:12];
        _rightDescribleLabel.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:_rightDescribleLabel];
        
        

        
        
    
    }
    return self;
}

@end
