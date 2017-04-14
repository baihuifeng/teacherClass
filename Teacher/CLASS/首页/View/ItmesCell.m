//
//  ItmesCell.m
//  Teacher
//
//  Created by 白慧峰 on 2017/4/14.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import "ItmesCell.h"

@implementation ItmesCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"ItmesCell" owner:self options:nil];
        self = [arr objectAtIndex:0];
        
    }
    return self;
    
}

@end
