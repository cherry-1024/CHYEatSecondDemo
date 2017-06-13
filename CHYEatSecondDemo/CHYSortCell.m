//
//  CHYSortCell.m
//  CHYEatSecondDemo
//
//  Created by csdc on 2017/6/7.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "CHYSortCell.h"
#import "CHYKindView.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height


@implementation CHYSortCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier sortArray:(NSMutableArray *)sortArray{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        //创建8个
        for (int i = 0; i < 8; i++) {
            if (i < 4) {
                CGRect frame = CGRectMake(i*SCREENWIDTH/4, 0, SCREENWIDTH/4, 80);
                NSString *title = [sortArray[i] objectForKey:@"title"];
                NSString *imageStr = [sortArray[i] objectForKey:@"image"];
                CHYKindView *btnView = [[CHYKindView alloc] initWithFrame:frame title:title imageStr:imageStr];
                btnView.tag = 10+i;
                [self.contentView addSubview:btnView];
                
            }else {
                CGRect frame = CGRectMake((i-4)*SCREENWIDTH/4, 80, SCREENWIDTH/4, 80);
                NSString *title = [sortArray[i] objectForKey:@"title"];
                NSString *imageStr = [sortArray[i] objectForKey:@"image"];
                CHYKindView *btnView = [[CHYKindView alloc] initWithFrame:frame title:title imageStr:imageStr];
                btnView.tag = 10+i;
                [self.contentView addSubview:btnView];}
        }
}
    return self;

}

@end
