//
//  ASBaseModel.m
//  SheQuEJia
//
//  Created by  on 16/1/12.
//  Copyright © 2018年 aisino. All rights reserved.
//

#import "ASBaseModel.h"

@implementation ASBaseModel
@synthesize dataArray;
@synthesize porthName;
@synthesize delegate;
@synthesize successData;
@synthesize sid;
@synthesize dataDic;

- (id)init{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)requestStart{
    dataArray = [NSMutableArray array];
    dataDic = [NSMutableDictionary dictionary];
}

@end
