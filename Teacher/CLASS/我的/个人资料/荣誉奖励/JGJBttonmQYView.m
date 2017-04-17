//
//  JGJBttonmQYView.m
//  JYallXiangMuTong
//
//  Created by 葬花桥 on 16/8/30.
//  Copyright © 2016年 陈石. All rights reserved.
//

#import "JGJBttonmQYView.h"

@implementation JGJBttonmQYView

- (id)initWithFrame:(CGRect)frame  dataArr:(NSArray *)datatArr {
    if ([super initWithFrame:frame]) {
       self = [[[NSBundle mainBundle] loadNibNamed:@"JGJBttonmQYView" owner:self options:nil] lastObject];
        _imgArr = datatArr;
        [self imgDateView];
    }
    return self;
}

- (void)imgDateView {
    int startX = 10;
    int startY = 10;
    int limitX =  kScreen_Width-40;
    CGFloat space = 17;
    int XNum = limitX/(kScreen_Width/4-20 + 10);
    for (int i = 0; i<_imgArr.count+1; i++) {
        if (i<_imgArr.count) {
            if (i%XNum == 0 && i) {
                startX = 10;
                startY += kScreen_Width/4-20+10;
            }
            UIButton *buttom = [self buttonViewRect:CGRectMake(startX, startY, kScreen_Width/4-20, kScreen_Width/4-20) tag:i+100];
            buttom.tag = i+100;
            [buttom setBackgroundImage:_imgArr[i] forState:UIControlStateNormal];
            [buttom addTarget:self action:@selector(LookImgSender:) forControlEvents:UIControlEventTouchUpInside];
            [self.imgView addSubview:buttom];
        }
        if (i == _imgArr.count) {
            if (i%XNum == 0 && i) {
                startX = 10;
                startY += kScreen_Width/4-20+10;
            }
            UIButton *buttom = [UIButton buttonWithType:UIButtonTypeSystem];
            buttom.frame = CGRectMake(startX, startY, kScreen_Width/4-20, kScreen_Width/4-20);
            [buttom setBackgroundImage:[UIImage imageNamed:@"icon-camera-2"] forState:UIControlStateNormal];
            [buttom addTarget:self action:@selector(locationbtn) forControlEvents:UIControlEventTouchUpInside];
            [self.imgView addSubview:buttom];
        }
    
        startX += kScreen_Width/4-20+space;
    }
    
}

- (void)LookImgSender:(UIButton *)sender {
    
    [self.deleagte lookImgIndex:(int)sender.tag-100];
}

- (void)locationbtn {

    [self.deleagte pushImgControllerView];
}

- (UIButton *)buttonViewRect:(CGRect)fram tag:(int)tag{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = fram;
    button.backgroundColor = [UIColor yellowColor];
    
    UIButton *deletebtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [deletebtn setBackgroundImage:[UIImage imageNamed:@"close"] forState:UIControlStateNormal];
    deletebtn.tag = tag;
    [deletebtn addTarget:self action:@selector(deleteImg:) forControlEvents:UIControlEventTouchUpInside];
    deletebtn.frame = CGRectMake(fram.size.width-14, 0, 14, 14);
    [button addSubview:deletebtn];

    return button;
}

- (void)deleteImg:(UIButton *)sender {
    [self.deleagte detaleImgArr:(int)sender.tag-100];
}


+ (CGFloat)height:(NSArray *)dataArr {
    int startX = 10;
    int startY = 10;
    int limitX =  kScreen_Width-40;
    CGFloat space = 17;
    int XNum = limitX/(kScreen_Width/4-20 + 10);
    for (int i = 0; i<dataArr.count+1; i++) {
        if (i%XNum == 0 && i) {
            startX = 10;
            startY += kScreen_Width/4-20+10;
        }
        if (i == dataArr.count) {
            if (i%XNum == 0 && i) {
                startX = 10;
                startY += kScreen_Width/4-20+10;
            }
        }
        startX += kScreen_Width/4-20+space;
    }
    
    if (dataArr.count%4 == 0 && dataArr.count !=0) {
        return startY+100;
    }
    
    return startY+kScreen_Width/4-10+70;
    
}


@end
