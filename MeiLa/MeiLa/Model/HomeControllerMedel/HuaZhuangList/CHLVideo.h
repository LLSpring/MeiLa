//
//	CHLVideo.h
//
//	Create by Mac on 24/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLExtra.h"
#import "CHLFeed.h"
#import "CHLUser.h"

@interface CHLVideo : NSObject

@property (nonatomic, assign) BOOL canLike;
@property (nonatomic, strong) CHLExtra * extra;
@property (nonatomic, strong) CHLFeed * feed;
@property (nonatomic, assign) BOOL isLike;
@property (nonatomic, strong) NSString * label;
@property (nonatomic, assign) NSInteger likeCount;
@property (nonatomic, strong) NSString * objid;
@property (nonatomic, assign) NSInteger participateCount;
@property (nonatomic, assign) NSInteger playedCount;
@property (nonatomic, strong) NSString * runtime;
@property (nonatomic, strong) NSString * type;
@property (nonatomic, strong) CHLUser * user;
@property (nonatomic, assign) NSInteger visitCount;
@end