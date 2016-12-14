//
//  CHLDVtalk.h
//  MeiLa
//
//  Created by Mac on 16/12/1.
//  Copyright © 2016年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHLTagInfo.h"
#import "CHLDVtalks.h"
@interface CHLDVtalk : NSObject
@property(nonatomic,strong)NSString *moreTip;
@property(nonatomic,strong)CHLTagInfo *tagInfo;
@property(nonatomic,strong)NSString   *hasMore;
@property(nonatomic,strong)NSString *title;
@property(nonatomic,assign)NSInteger notCream;
@property(nonatomic,strong)NSArray *vtalks;
@property(nonatomic,assign)NSInteger cream;

@end
