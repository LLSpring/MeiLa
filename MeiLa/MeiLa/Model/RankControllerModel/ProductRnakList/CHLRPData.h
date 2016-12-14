//
//	CHLData.h
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLBannerImg.h"
#import "CHLHotFeature.h"
#import "CHLShare.h"
#import "CHLSubList.h"
#import "CHLTopEntry.h"
#import "CHLTopEntry.h"

@interface CHLRPData : NSObject
@property (nonatomic, strong) CHLBannerImg * bannerImg;
@property (nonatomic, strong) NSArray * banners;
@property (nonatomic, strong) NSArray * brands;
@property (nonatomic, strong) CHLHotFeature * hotFeatures;
@property (nonatomic, strong) CHLShare * share;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSArray * subEntry;
@property (nonatomic, strong) NSArray * subList;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) CHLTopEntry * topEntry;
@property (nonatomic, strong) CHLTopEntry * vtalk;
@end