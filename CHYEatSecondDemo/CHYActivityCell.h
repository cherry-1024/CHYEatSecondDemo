//
//  CHYActivityCell.h
//  CHYEatSecondDemo
//
//  Created by csdc on 2017/6/7.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHYActivityModel.h"

@interface CHYActivityCell : UITableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier addData:(CHYActivityModel *)activityModel;


@end
