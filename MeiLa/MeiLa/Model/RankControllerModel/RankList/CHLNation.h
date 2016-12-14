//
//	CHLNation.h
//
//	Create by Mac on 25/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLImgV4.h"
#import "CHLProduct.h"

@interface CHLNation : NSObject
@property (nonatomic, strong) CHLImgV4 * img;
@property (nonatomic, strong) CHLImgV4 * imgLogo;
@property (nonatomic, strong) NSString * intro;
@property (nonatomic, strong) NSString * jumpData;
@property (nonatomic, strong) NSString * jumpLabel;
@property (nonatomic, strong) NSArray * products;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * upInfoImg;
@end