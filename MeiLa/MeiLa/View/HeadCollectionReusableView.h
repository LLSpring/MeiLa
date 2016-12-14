//
//  HeadCollectionReusableView.h
//  MeiLa
//
//  Created by Mac on 16/11/29.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeadCollectionReusableView : UICollectionReusableView

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *headCollection;
@end
