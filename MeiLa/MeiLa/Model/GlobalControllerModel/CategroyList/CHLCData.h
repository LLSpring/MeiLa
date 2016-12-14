//
//	CHLData.h
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLNavtree.h"
#import "CHLCProduct.h"
#import "CHLTopList.h"

@interface CHLCData : NSObject
@property (nonatomic, strong) NSString * countTitle;
@property (nonatomic, assign) BOOL hasMore;
@property (nonatomic, strong) CHLNavtree * navtree;
@property (nonatomic, strong) NSArray * products;
@property (nonatomic, strong) NSArray * topList;
@end