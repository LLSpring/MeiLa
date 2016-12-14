//
//	CHLHotFeature.h
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLFeature.h"

@interface CHLHotFeature : NSObject
@property (nonatomic, strong) NSArray * features;
@property (nonatomic, assign) BOOL hasMore;
@property (nonatomic, strong) NSString * jumpData;
@property (nonatomic, strong) NSString * jumpLabel;
@end