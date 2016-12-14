//
//	CHLProduct.h
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLBrand.h"
#import "CHLExt.h"
#import "CHLMeigouInfo.h"
#import "CHLMeigouInfo.h"
#import "CHLMeigouInfo.h"
#import "CHLShopCount.h"

@interface CHLCProduct : NSObject
@property (nonatomic, strong) NSString * banner;
@property (nonatomic, strong) NSString * bannerThumb;
@property (nonatomic, strong) CHLBrand * brand;
@property (nonatomic, strong) NSString * commentText;
@property (nonatomic, assign) CGFloat createTime;
@property (nonatomic, strong) NSArray * effects;
@property (nonatomic, strong) CHLExt * ext;
@property (nonatomic, assign) BOOL isRecomand;
@property (nonatomic, strong) CHLMeigouInfo * meigouInfo;
@property (nonatomic, strong) CHLMeigouInfo * meigouPurchaseInfo;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) NSInteger price;
@property (nonatomic, strong) CHLMeigouInfo * recommandUrl;
@property (nonatomic, strong) CHLShopCount * shopCount;
@property (nonatomic, strong) NSString * shortName;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSArray * wares;
@property (nonatomic, assign) NSInteger waresCount;
@property (nonatomic, strong) NSString * waresCountText;
@end