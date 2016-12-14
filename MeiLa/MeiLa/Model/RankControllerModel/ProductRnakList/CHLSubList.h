//
//	CHLSubList.h
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLRProduct.h"

@interface CHLSubList : NSObject
@property (nonatomic, strong) NSString * des;
@property (nonatomic, assign) BOOL hasMore;
@property (nonatomic, strong) NSArray * products;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, assign) NSInteger topCount;
@end