//
//  TmpTableViewCell.m
//  11
//
//  Created by 刘浩浩 on 2018/9/18.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "TmpTableViewCell.h"
#import <Masonry.h>

@implementation TmpTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createTmpView];
    }
    return self;
}

- (void)createTmpView
{
    _headerLabel = [[UILabel alloc] init];
    _headerLabel.text = @"张三";
    _headerLabel.backgroundColor = [UIColor blueColor];
    _headerLabel.textAlignment = NSTextAlignmentCenter;
    _headerLabel.font = [UIFont systemFontOfSize:18];
    _headerLabel.layer.cornerRadius = 30;
    _headerLabel.layer.borderWidth = 4;
    _headerLabel.textColor = [UIColor whiteColor];
    _headerLabel.layer.borderColor = [UIColor whiteColor].CGColor;
    _headerLabel.clipsToBounds = YES;
    [self addSubview:_headerLabel];
    [_headerLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(12);
        make.top.mas_equalTo(self).offset(20);
        make.bottom.mas_equalTo(self).offset(-20);
        make.width.height.mas_equalTo(@60);
    }];
    
    _nameLabel = [[UILabel alloc] init];
    _nameLabel.text = @"张三";
    _nameLabel.textColor = [UIColor blackColor];
    [self addSubview:_nameLabel];
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.headerLabel.mas_right).offset(12);
        make.top.mas_equalTo(self).offset(20);
        make.height.mas_equalTo(@20);
    }];
    
    _sexAgeLabel = [[UILabel alloc] init];
    _sexAgeLabel.text = @"男 18岁";
    _sexAgeLabel.font = [UIFont systemFontOfSize:12];
    _sexAgeLabel.textColor = [UIColor grayColor];
    [self addSubview:_sexAgeLabel];
    [_sexAgeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.nameLabel.mas_right).offset(12);
        make.top.mas_equalTo(self).offset(20);
        make.height.mas_equalTo(@20);
    }];
    
    _positionLabel = [[UILabel alloc] init];
    _positionLabel.text = @"我的爱好:  踢足球";
    _positionLabel.font = [UIFont systemFontOfSize:12];
    _positionLabel.textColor = [UIColor blackColor];
    [self addSubview:_positionLabel];
    [_positionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.headerLabel.mas_right).offset(12);
        make.top.mas_equalTo(self.nameLabel.mas_bottom).offset(0);
        make.height.mas_equalTo(@20);
    }];
    
    _jobLabel = [[UILabel alloc] init];
    _jobLabel.text = @"我的专业:  软件工程";
    _jobLabel.font = [UIFont systemFontOfSize:12];
    _jobLabel.textColor = [UIColor blackColor];
    [self addSubview:_jobLabel];
    [_jobLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.headerLabel.mas_right).offset(12);
        make.top.mas_equalTo(self.positionLabel.mas_bottom).offset(0);
        make.height.mas_equalTo(@20);
    }];
    
    _arrowImgView = [[UIImageView alloc] init];
    _arrowImgView.image = [UIImage imageNamed:@"arrow.png"];
    [self addSubview:_arrowImgView];
    [_arrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(@15);
        make.centerY.equalTo(self);
        make.right.mas_equalTo(self).mas_offset(-12);
    }];
    
    _needLabel = [[UILabel alloc] init];
    _needLabel.backgroundColor = [UIColor orangeColor];
    _needLabel.layer.cornerRadius = 3;
    _needLabel.clipsToBounds = YES;
    _needLabel.font = [UIFont systemFontOfSize:12];
    _needLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_needLabel];
    [_needLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.right.mas_equalTo(self.arrowImgView.mas_left).offset(-12);
        make.height.mas_equalTo(@18);
    }];
    
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"   学生会 ."];
    [string addAttribute:NSForegroundColorAttributeName value:[UIColor clearColor] range:NSMakeRange(string.length-1,1)];
    _needLabel.attributedText = string;

}

@end
