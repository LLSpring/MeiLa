//
//	CHLProduct.h
//
//	Create by Mac on 28/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLImg.h"
#import "CHLSeller.h"
@interface CHLGProduct : NSObject
@property (nonatomic, strong) NSObject * bgImg;
@property (nonatomic, strong) NSArray * imgs;
@property (nonatomic, strong) NSString * jumpData;
@property (nonatomic, strong) NSString * jumpLabel;
@property (nonatomic, assign) NSInteger leftCount;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * objid;
@property (nonatomic, assign) NSInteger onsaleStatus;
@property (nonatomic, assign) CGFloat orgPrice;
@property (nonatomic, assign) CGFloat price;
@property (nonatomic, strong) NSString * purchaseSource;
@property (nonatomic, strong) CHLSeller * seller;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSString * subName;
@property (nonatomic, strong) NSString * tag;
@property (nonatomic, strong) NSArray * textTags;
@property (nonatomic, strong) NSArray * words;
@end