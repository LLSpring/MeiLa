//
//	CHLBanner.h
//
//	Create by Mac on 23/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLMonitor.h"

@interface CHLBanner : NSObject

@property (nonatomic, strong) NSString * img;
@property (nonatomic, assign) NSInteger imgHeight;
@property (nonatomic, assign) NSInteger imgWidth;
@property (nonatomic, strong) NSString * jumpData;
@property (nonatomic, strong) NSString * jumpLabel;
@property (nonatomic, strong) CHLMonitor * monitors;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSString * type;
@end