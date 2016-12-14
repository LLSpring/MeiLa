//
//	CHLData.h
//
//	Create by Mac on 28/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLModule.h"
#import "CHLSearchTip.h"
#import "CHLShoppingCart.h"
#import "CHLTab.h"
@interface CHLGData : NSObject
@property (nonatomic, strong) NSArray * banners;
@property (nonatomic, strong) NSArray * headings;
@property (nonatomic, strong) NSArray * modules;
@property (nonatomic, strong) CHLSearchTip * searchTips;
@property (nonatomic, assign) NSInteger serverTime;
@property (nonatomic, strong) CHLShoppingCart * shoppingCart;
@property (nonatomic, strong) NSArray * tabs;
@end