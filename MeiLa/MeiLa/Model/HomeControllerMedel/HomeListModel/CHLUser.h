//
//	CHLUser.h
//
//	Create by Mac on 23/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLClub.h"

@interface CHLUser : NSObject
@property (nonatomic, strong) NSString * ageRange;
@property (nonatomic, strong) NSString * avatar;
@property (nonatomic, strong) CHLClub * club;
@property (nonatomic, assign) NSInteger collectCount;
@property (nonatomic, assign) NSInteger commentCount;
@property (nonatomic, assign) NSInteger fansCount;
@property (nonatomic, assign) NSInteger followsCount;
@property (nonatomic, assign) NSInteger gender;
@property (nonatomic, assign) NSInteger level;
@property (nonatomic, strong) NSString * levelImg;
@property (nonatomic,strong) NSString * NewTypeIcon;
@property (nonatomic, strong) NSString * nickname;
@property (nonatomic, assign) NSInteger skinType;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, assign) NSInteger snsStatus;
@property (nonatomic, strong) NSString * typeIcon;
@end