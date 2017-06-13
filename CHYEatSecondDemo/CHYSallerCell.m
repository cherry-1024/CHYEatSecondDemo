//
//  CHYSallerCell.m
//  CHYEatSecondDemo
//
//  Created by csdc on 2017/6/6.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "CHYSallerCell.h"
#import "CHYSallerModel.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height


@interface CHYSallerCell ()
{
    
        UIImageView *_sallerImageView;
        UILabel *_sallerNameLabel;
        UILabel *_sallerDistanceLabel;
        UILabel *_sallerPriceLabel;
    }
    
@end
    
@implementation CHYSallerCell
    
    -(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier addData:(CHYSallerModel *)sallerModel{
        self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
        if (self) {
            
            //图
            _sallerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 80, 80)];
            _sallerImageView.image = sallerModel.icon;
            _sallerImageView.layer.masksToBounds = YES;
            _sallerImageView.layer.cornerRadius = 4;
            [self addSubview:_sallerImageView];
            
            //名称
            _sallerNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 10, SCREENWIDTH-100, 30)];
            _sallerNameLabel.text = sallerModel.sallerName;
            _sallerNameLabel.font = [UIFont systemFontOfSize:15];
            [self addSubview:_sallerNameLabel];
            
            //距离
            _sallerDistanceLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 30, SCREENWIDTH-100-10, 50)];
            _sallerDistanceLabel.text = sallerModel.distance;
            _sallerDistanceLabel.numberOfLines = 2;
            _sallerDistanceLabel.font = [UIFont systemFontOfSize:13];
            _sallerDistanceLabel.textColor = [UIColor lightGrayColor];
            _sallerDistanceLabel.lineBreakMode = NSLineBreakByTruncatingTail;
            [self addSubview:_sallerDistanceLabel];
            
            //价格
            _sallerPriceLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 70, 100, 20)];
            _sallerPriceLabel.text = sallerModel.deliveryPrice;
            _sallerPriceLabel.font = [UIFont systemFontOfSize:13];
            _sallerPriceLabel.textColor = [UIColor blackColor];
            [self addSubview:_sallerPriceLabel];
            
        }
        return self;
    }
    

    
@end
