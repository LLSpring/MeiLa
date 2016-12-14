//
//	CHLVideo.h
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLActor.h"
#import "CHLImgV4.h"

@interface CHLDVideos : NSObject
@property (nonatomic, strong) CHLActor * actor;
@property (nonatomic, strong) CHLImgV4 * img;
@property (nonatomic, strong) NSString * slug;
@property (nonatomic, strong) NSString * title;
@end