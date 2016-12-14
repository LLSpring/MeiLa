//
//	CHLData.h
//
//	Create by Mac on 23/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLBanner.h"
#import "CHLBurnFeed.h"
#import "CHLFeeds.h"

@interface CHLData : NSObject
@property (nonatomic, strong) NSArray * banners;
@property (nonatomic, strong) NSArray * burnFeed;
@property (nonatomic, strong) NSString * feedTips;
@property (nonatomic, strong) NSArray * feeds;
@property (nonatomic, assign) BOOL hasMore;
@property (nonatomic, assign) NSInteger interval;
@end