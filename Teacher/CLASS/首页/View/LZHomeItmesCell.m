//
//  LZHomeItmesCell.m
//  Teacher
//
//  Created by 白慧峰 on 2017/4/14.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import "LZHomeItmesCell.h"
#import "ItmesCell.h"

@implementation LZHomeItmesCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

}
- (void)setDataArr:(NSArray *)dataArr imgArr:(NSArray *)imgArr {
    _dataArr = dataArr;
    _imgArr = imgArr;
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    [_collectionView registerClass:[ItmesCell class] forCellWithReuseIdentifier:@"ItmesCell"];
    [_collectionView reloadData];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return _dataArr.count;
}

//返回多少组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}
//加载cell
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ItmesCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ItmesCell" forIndexPath:indexPath];
    if (indexPath.row % 3 != 1) {
        cell.rView.hidden = YES;
        cell.lView.hidden = YES;
    } else {
        cell.rView.hidden = NO;
        cell.lView.hidden = NO;
    }
    
    
    if (indexPath.row  <3) {
        cell.sView.hidden = NO;
    } else {
        cell.sView.hidden = YES;
    }
    NSLog(@"%ld",(indexPath.row / 3)+1);
    
    cell.img.image = [UIImage imageNamed:_imgArr[indexPath.row]];
    cell.itmeTitle.text = _dataArr[indexPath.row];
    return cell;
    
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake(kScreen_Width/3, 125.5);
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
