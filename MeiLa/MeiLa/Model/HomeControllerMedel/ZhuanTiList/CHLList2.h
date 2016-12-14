//
//	CHLList2.h
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLTUser.h"

@interface CHLList2 : NSObject
@property (nonatomic, strong) NSString * content;
@property (nonatomic, assign) NSInteger createTime;
@property (nonatomic, assign) NSInteger floor;
@property (nonatomic, assign) NSInteger floor2;
@property (nonatomic, assign) BOOL hasMoreReplies;
@property (nonatomic, strong) NSArray * imgs;
@property (nonatomic, assign) BOOL isTop;
@property (nonatomic, strong) NSArray * replies;
@property (nonatomic, assign) NSInteger replyCount;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, assign) NSInteger updateTime;
@property (nonatomic, strong) CHLTUser * user;
@end