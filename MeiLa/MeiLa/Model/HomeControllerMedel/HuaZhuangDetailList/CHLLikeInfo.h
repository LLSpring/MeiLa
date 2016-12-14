//
//	CHLLikeInfo.h
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface CHLLikeInfo : NSObject
@property (nonatomic, assign) NSInteger contentTypeId;
@property (nonatomic, assign) BOOL isLiked;
@property (nonatomic, assign) NSInteger likeCount;
@property (nonatomic, strong) NSArray * likeUsers;
@end