//
//  CHYSallerCell.h
//  CHYEatSecondDemo
//
//  Created by csdc on 2017/6/6.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHYSallerModel.h"

@interface CHYSallerCell : UITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier addData:(CHYSallerModel *)sallerModel;


@property(nonatomic, strong) CHYSallerModel *sallerModel;


@end


