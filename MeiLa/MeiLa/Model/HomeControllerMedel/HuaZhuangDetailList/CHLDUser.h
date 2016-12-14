//
//	CHLUser.h
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLClub.h"

@interface CHLDUser : NSObject
@property (nonatomic, strong) NSString * ageRange;
@property (nonatomic, strong) NSString * avatar;
@property (nonatomic, strong) CHLClub * club;
@property (nonatomic, assign) NSInteger coin;
@property (nonatomic, assign) NSInteger gender;
@property (nonatomic, assign) NSInteger level;
@property (nonatomic, strong) NSString * levelImg;
@property (nonatomic, strong) NSString * NewTypeIcon;
@property (nonatomic, strong) NSString * NewTypeImg;
@property (nonatomic, strong) NSString * nickname;
@property (nonatomic, assign) NSInteger skinType;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSString * typeIcon;
@end