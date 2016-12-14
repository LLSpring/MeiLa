//
//	CHLData.h
//
//	Create by Mac on 29/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLBrand.h"
#import "CHLPCategory.h"
#import "CHLEffect.h"

@interface CHLPData : NSObject
@property (nonatomic, strong) NSArray * brands;
@property (nonatomic, strong) NSArray * categories;
@property (nonatomic, strong) NSArray * effects;
@end