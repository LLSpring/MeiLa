//
//	CHLData.h
//
//	Create by Mac on 30/11/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "CHLList1.h"
#import "CHLList2.h"

@interface CHLTData : NSObject
@property (nonatomic, assign) NSInteger commentCount;
@property (nonatomic, strong) NSArray * list1;
@property (nonatomic, assign) BOOL list1HasMore;
@property (nonatomic, strong) NSArray * list2;
@property (nonatomic, assign) BOOL list2HasMore;
@end