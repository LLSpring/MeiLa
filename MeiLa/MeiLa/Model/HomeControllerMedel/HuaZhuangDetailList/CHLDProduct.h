//
//	CHLProduct.h
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLTagInfo.h"

@interface CHLDProduct : NSObject
@property (nonatomic, assign) BOOL hasMore;
@property (nonatomic, assign) NSInteger jumpData;
@property (nonatomic, strong) NSString * jumpLabel;
@property (nonatomic, strong) NSString * moreTip;
@property (nonatomic, strong) NSArray * products;
@property (nonatomic, strong) CHLTagInfo * tagInfo;
@property (nonatomic, strong) NSString * title;
@end