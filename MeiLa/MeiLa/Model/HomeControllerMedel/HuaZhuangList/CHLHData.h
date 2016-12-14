//
//	CHLData.h
//
//	Create by Mac on 24/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLBeautyMakeup.h"
#import "CHLFeeds.h"
#import "CHLMakeupButton.h"
#import "CHLVideo.h"

@interface CHLHData : NSObject

@property (nonatomic, strong) NSArray * banners;
@property (nonatomic, strong) NSArray * beautyMakeups;
@property (nonatomic, strong) NSArray * feeds;
@property (nonatomic, assign) BOOL hasMore;
@property (nonatomic, assign) NSInteger interval;
@property (nonatomic, strong) NSArray * makeupButtons;
@property (nonatomic, strong) NSArray * videos;
@end