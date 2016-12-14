//
//	CHLFeed.h
//
//	Create by Mac on 23/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLImgV4.h"
#import "CHLVtalkTag.h"


@interface CHLFeed : NSObject
@property (nonatomic, strong) NSString * img;
@property (nonatomic, assign) NSInteger imgHeight;
@property (nonatomic, strong) CHLImgV4 * imgV4;
@property (nonatomic, assign) NSInteger imgWidth;
@property (nonatomic, strong) NSString * jumpData;
@property (nonatomic, strong) NSString * jumpLabel;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSArray * vtalkTags;





@end