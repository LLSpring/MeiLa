//
//  CHLFeeds.h
//  MeiLa
//
//  Created by Mac on 16/11/23.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHLUser.h"
#import "CHLFeed.h"
@interface CHLFeeds : NSObject


@property(nonatomic,strong)CHLFeed *feed;
@property(nonatomic,strong)NSString *canLike;
@property(nonatomic,strong)NSString *isLike;
@property(nonatomic,strong)NSString *participateCount;
@property(nonatomic,strong)NSString *label;
@property(nonatomic,strong)NSString *likeCount;
@property(nonatomic,strong)CHLUser *user;
@property(nonatomic,strong)NSString *visitCount;
@property(nonatomic,strong)NSString *type;
@property(nonatomic,strong)NSString *objid;










@end
