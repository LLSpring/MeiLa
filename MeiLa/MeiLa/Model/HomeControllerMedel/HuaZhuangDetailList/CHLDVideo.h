//
//  CHLDVideo.h
//  MeiLa
//
//  Created by Mac on 16/12/1.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHLDVideos.h"
#import "CHLTagInfo.h"
@interface CHLDVideo : NSObject
@property(nonatomic,strong)NSString *moreTip;
@property(nonatomic,strong)NSString *title;
@property(nonatomic,strong)NSString *hasMore;
@property(nonatomic,strong)NSString *jumpData;
@property(nonatomic,strong)NSString *jumpLabel;
@property(nonatomic,strong)NSArray *videos;
@property(nonatomic,strong)CHLTagInfo *tagInfo;

@end
