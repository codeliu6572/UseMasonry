//
//  DetailViewController.m
//  11
//
//  Created by 刘浩浩 on 2018/9/18.
//  Copyright © 2018年 CodingFire. All rights reserved.
//

#import "DetailViewController.h"
#import <Masonry.h>

@interface DetailViewController ()

@property(nonatomic, strong)UIScrollView *tmpScrollView;
@property(nonatomic, strong)UIView *tmpContentView;
@property(nonatomic, strong)UIView *topView;
@property(nonatomic, strong)UIView *centerView;
@property(nonatomic, strong)UIView *bottomView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _tmpScrollView = [[UIScrollView alloc] init];
    _tmpScrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_tmpScrollView];
    [_tmpScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    _tmpContentView = [[UIView alloc] init];
    [_tmpScrollView addSubview:_tmpContentView];
    [_tmpContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.tmpScrollView);
        make.width.equalTo(self.tmpScrollView);
    }];
    
    [self createTopView];
    [self createCenterView];
    [self createBottomView];
}

#pragma mark - createTopView
- (void)createTopView
{
    _topView = [[UIView alloc] init];
    _topView.backgroundColor = [UIColor whiteColor];
    _topView.layer.cornerRadius = 5;
    _topView.clipsToBounds = YES;
    [_tmpContentView addSubview:_topView];
    [_topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.tmpScrollView).mas_offset(12);
        make.top.mas_equalTo(self.tmpScrollView).mas_offset(12);
        make.right.mas_equalTo(self.tmpScrollView).mas_offset(-12);
    }];
    
    UILabel *_headerLabel = [[UILabel alloc] init];
    _headerLabel.text = @"张三";
    _headerLabel.backgroundColor = [UIColor blueColor];
    _headerLabel.textAlignment = NSTextAlignmentCenter;
    _headerLabel.font = [UIFont systemFontOfSize:18];
    _headerLabel.layer.cornerRadius = 30;
    _headerLabel.layer.borderWidth = 4;
    _headerLabel.textColor = [UIColor whiteColor];
    _headerLabel.layer.borderColor = [UIColor whiteColor].CGColor;
    _headerLabel.clipsToBounds = YES;
    [_topView addSubview:_headerLabel];
    [_headerLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.topView).offset(12);
        make.top.mas_equalTo(self.topView).offset(20);
        make.bottom.mas_equalTo(self.topView).offset(-20);
        make.width.height.mas_equalTo(@60);
    }];
    
    UILabel *_nameLabel = [[UILabel alloc] init];
    _nameLabel.text = @"张三";
    _nameLabel.textColor = [UIColor blackColor];
    [_topView addSubview:_nameLabel];
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_headerLabel.mas_right).offset(12);
        make.top.mas_equalTo(self.topView).offset(20);
        make.height.mas_equalTo(@20);
    }];

    UILabel *_sexAgeLabel = [[UILabel alloc] init];
    _sexAgeLabel.text = @"男 18岁";
    _sexAgeLabel.font = [UIFont systemFontOfSize:12];
    _sexAgeLabel.textColor = [UIColor grayColor];
    [_topView addSubview:_sexAgeLabel];
    [_sexAgeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_nameLabel.mas_right).offset(12);
        make.top.mas_equalTo(self.topView).offset(20);
        make.height.mas_equalTo(@20);
    }];

    UILabel *_positionLabel = [[UILabel alloc] init];
    _positionLabel.text = @"我的爱好:  踢足球";
    _positionLabel.font = [UIFont systemFontOfSize:12];
    _positionLabel.textColor = [UIColor blackColor];
    [_topView addSubview:_positionLabel];
    [_positionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_headerLabel.mas_right).offset(12);
        make.top.mas_equalTo(_nameLabel.mas_bottom).offset(0);
        make.height.mas_equalTo(@20);
    }];

    UILabel *_jobLabel = [[UILabel alloc] init];
    _jobLabel.text = @"我的专业:  软件工程";
    _jobLabel.font = [UIFont systemFontOfSize:12];
    _jobLabel.textColor = [UIColor blackColor];
    [_topView addSubview:_jobLabel];
    [_jobLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_headerLabel.mas_right).offset(12);
        make.top.mas_equalTo(_positionLabel.mas_bottom).offset(0);
        make.height.mas_equalTo(@20);
    }];

    UILabel *_needLabel = [[UILabel alloc] init];
    _needLabel.backgroundColor = [UIColor orangeColor];
    _needLabel.layer.cornerRadius = 3;
    _needLabel.clipsToBounds = YES;
    _needLabel.font = [UIFont systemFontOfSize:12];
    _needLabel.textAlignment = NSTextAlignmentCenter;
    [_topView addSubview:_needLabel];
    [_needLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.topView);
        make.right.mas_equalTo(self.topView).offset(-12);
        make.height.mas_equalTo(@18);
    }];

    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"   学生会 ."];
    [string addAttribute:NSForegroundColorAttributeName value:[UIColor clearColor] range:NSMakeRange(string.length-1,1)];
    _needLabel.attributedText = string;
    

}

- (void)createCenterView
{
    _centerView = [[UIView alloc] init];
    _centerView.backgroundColor = [UIColor whiteColor];
    _centerView.layer.cornerRadius = 5;
    _centerView.clipsToBounds = YES;
    [_tmpContentView addSubview:_centerView];
    [_centerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.tmpScrollView).mas_offset(12);
        make.top.mas_equalTo(self.topView.mas_bottom).mas_offset(12);
        make.right.mas_equalTo(self.tmpScrollView).mas_offset(-12);
    }];
    
    NSArray *leftTitle = @[@"姓名", @"年龄", @"性别", @"生日", @"班级", @"特长", @"所在宿舍", @"所在部门"];
    NSArray *rightTitle = @[@"张三", @"18", @"男", @"09.09", @"网络三班", @"足球", @"8幢603室", @"新闻中心"];
    
    UILabel *tmpLabel;
    for (int i = 0; i < leftTitle.count; i++) {
        UILabel *leftLabel = [[UILabel alloc] init];
        leftLabel.text = leftTitle[i];
        leftLabel.textColor = [UIColor orangeColor];
        leftLabel.font = [UIFont systemFontOfSize:14];
        leftLabel.textAlignment = NSTextAlignmentLeft;
        [_centerView addSubview:leftLabel];
        [leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            if (!tmpLabel) {
                make.top.mas_equalTo(self.centerView).mas_offset(12);
            }
            else
            {
                make.top.mas_equalTo(tmpLabel.mas_bottom).mas_offset(12);
            }
            make.left.mas_equalTo(self.centerView).mas_offset(12);
            if (i == leftTitle.count - 1) {
                make.bottom.mas_equalTo(self.centerView).mas_offset(-12);
            }
        }];
        
        UILabel *rightLabel = [[UILabel alloc] init];
        rightLabel.text = rightTitle[i];
        rightLabel.textColor = [UIColor blackColor];
        rightLabel.font = [UIFont systemFontOfSize:14];
        rightLabel.textAlignment = NSTextAlignmentRight;
        [_centerView addSubview:rightLabel];
        [rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(leftLabel);
            make.right.mas_equalTo(self.centerView).mas_offset(-12);
        }];
        tmpLabel = rightLabel;
    }
    
}

- (void)createBottomView
{
    _bottomView = [[UIView alloc] init];
    _bottomView.backgroundColor = [UIColor whiteColor];
    _bottomView.layer.cornerRadius = 5;
    _bottomView.clipsToBounds = YES;
    [_tmpContentView addSubview:_bottomView];
    [_bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.tmpScrollView).mas_offset(12);
        make.top.mas_equalTo(self.centerView.mas_bottom).mas_offset(12);
        make.right.mas_equalTo(self.tmpScrollView).mas_offset(-12);
        make.bottom.mas_equalTo(self.tmpScrollView).mas_offset(-12);
    }];
    
    NSArray *leftTitle = @[@"姓名", @"年龄", @"性别", @"生日", @"班级", @"特长", @"所在宿舍", @"所在部门"];
    NSArray *rightTitle = @[@"张三", @"18", @"男", @"09.09", @"网络三班", @"足球", @"8幢603室", @"新闻中心"];
    
    UILabel *tmpLabel;
    for (int i = 0; i < leftTitle.count; i++) {
        UILabel *leftLabel = [[UILabel alloc] init];
        leftLabel.text = leftTitle[i];
        leftLabel.textColor = [UIColor orangeColor];
        leftLabel.font = [UIFont systemFontOfSize:14];
        leftLabel.textAlignment = NSTextAlignmentLeft;
        [_bottomView addSubview:leftLabel];
        [leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            if (!tmpLabel) {
                make.top.mas_equalTo(self.bottomView).mas_offset(12);
            }
            else
            {
                make.top.mas_equalTo(tmpLabel.mas_bottom).mas_offset(12);
            }
            make.left.mas_equalTo(self.bottomView).mas_offset(12);
            if (i == leftTitle.count - 1) {
                make.bottom.mas_equalTo(self.bottomView).mas_offset(-12);
            }
        }];
        
        UILabel *rightLabel = [[UILabel alloc] init];
        rightLabel.text = rightTitle[i];
        rightLabel.textColor = [UIColor blackColor];
        rightLabel.font = [UIFont systemFontOfSize:14];
        rightLabel.textAlignment = NSTextAlignmentRight;
        [_bottomView addSubview:rightLabel];
        [rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(leftLabel);
            make.right.mas_equalTo(self.bottomView).mas_offset(-12);
        }];
        tmpLabel = rightLabel;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
