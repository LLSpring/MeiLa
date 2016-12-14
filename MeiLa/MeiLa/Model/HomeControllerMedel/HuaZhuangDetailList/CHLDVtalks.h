//
//	CHLVtalk.h
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLImgV4.h"
#import "CHLLikeInfo.h"
#import "CHLDUser.h"
@interface CHLDVtalks : NSObject
@property (nonatomic, strong) NSArray * imgs;
@property (nonatomic, strong) CHLLikeInfo * likeInfo;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) CHLDUser * user;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSString * objid;

@end