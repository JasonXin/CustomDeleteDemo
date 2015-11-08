//
//  CustomCell.m
//  LOL_app
//
//  Created by Jason on 15/11/8.
//  Copyright © 2015年 JasoneIo. All rights reserved.
//

#import "CustomCell.h"
#import "Masonry.h"

@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIView *deleteBgView = [UIView new];
        deleteBgView.backgroundColor = [UIColor brownColor];
        [self.contentView addSubview:deleteBgView];
        
        UIButton *deleteBtn = [UIButton new];
        //deleteBtn.backgroundColor = [UIColor yellowColor];
        [deleteBtn setImage:[UIImage imageNamed:@"delete"] forState:UIControlStateNormal];
        [deleteBgView addSubview:deleteBtn];
        
        [deleteBgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.offset([UIScreen mainScreen].bounds.size.width);
            make.top.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(1);
            make.width.equalTo(self.contentView);
        }];
        
        [deleteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.offset(80);
            make.top.equalTo(deleteBgView);
            make.bottom.equalTo(deleteBgView);
            make.left.equalTo(deleteBgView);
        }];
        
        
    }
    return self;
}

@end
