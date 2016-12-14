//
//	CHLData.h
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLLatestVtalk.h"
#import "CHLDProduct.h"
#import "CHLTagInfo.h"
#import "CHLDVideo.h"
#import "CHLDVtalk.h"
#import "CHLWare.h"

@interface CHLDData : NSObject
@property (nonatomic, strong) NSArray * hotVtalkTitles;
@property (nonatomic, strong) CHLLatestVtalk * latestVtalk;
@property (nonatomic, strong) CHLDProduct * product;
@property (nonatomic, strong) CHLTagInfo * tagInfo;
@property (nonatomic, strong) CHLDVideo * video;
@property (nonatomic, strong) CHLDVtalk * vtalk;
@property (nonatomic, strong) CHLWare * ware;
@end