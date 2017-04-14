//
//  ItmesCell.h
//  Teacher
//
//  Created by 白慧峰 on 2017/4/14.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItmesCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *img;

@property (strong, nonatomic) IBOutlet UILabel *itmeTitle;

@property (strong, nonatomic) IBOutlet UIView *sView;

@property (strong, nonatomic) IBOutlet UIView *rView;
@property (strong, nonatomic) IBOutlet UIView *lView;
@end
