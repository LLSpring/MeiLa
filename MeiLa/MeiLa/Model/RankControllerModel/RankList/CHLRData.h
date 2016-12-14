//
//	CHLData.h
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLAdviser.h"
#import "CHLCategory.h"
#import "CHLFeatureMore.h"
#import "CHLFeatureShow.h"
#import "CHLNation.h"
#import "CHLRTop.h"

@interface CHLRData : NSObject
@property (nonatomic, strong) CHLAdviser * advisers;
@property (nonatomic, strong) NSArray * banners;
@property (nonatomic, strong) NSArray * categories;
@property (nonatomic, strong) NSString * categorySubtitle;
@property (nonatomic, strong) NSString * categoryTitle;
@property (nonatomic, strong) CHLFeatureMore * featureMore;
@property (nonatomic, strong) NSArray * featureShow;
@property (nonatomic, assign) NSInteger interval;
@property (nonatomic, strong) NSArray * nations;
@property (nonatomic, strong) NSArray * nav;
@property (nonatomic, strong) NSArray * subject;
@property (nonatomic, strong) CHLRTop * top;
@property (nonatomic, strong) NSString * totalDes;
@end