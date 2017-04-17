//
//  JGJBttonmQYView.h
//  JYallXiangMuTong
//
//  Created by 葬花桥 on 16/8/30.
//  Copyright © 2016年 陈石. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ImgDelegate <NSObject>

- (void)pushImgControllerView;

- (void)detaleImgArr:(int)tag;

- (void)lookImgIndex:(int)index;

@end

@interface JGJBttonmQYView : UIView
- (id)initWithFrame:(CGRect)frame dataArr:(NSArray *)datatArr;

@property (strong, nonatomic) IBOutlet UIView *imgView;
@property (nonatomic,strong) NSArray *imgArr;

+ (CGFloat)height:(NSArray *)dataArr;
@property (strong, nonatomic) IBOutlet UIButton *tijao;

@property (weak,nonatomic) id <ImgDelegate>deleagte;
@end
