//
//  ASPage.h
//  hxxdj
//
//  Created by 刘 on 2018/12/12.
//  Copyright © 2018年 aisino. All rights reserved.
//

#import "ASBaseModel.h"

@interface ASPage : ASBaseModel
@property (nonatomic, assign) NSUInteger total;//总条数
@property (nonatomic, assign) NSUInteger pages; //总页数
@property (nonatomic, assign) NSUInteger current; //当前页
@property (nonatomic, assign) NSUInteger size;//每页条数

+ (instancetype)defaultPage;

- (NSMutableDictionary *)nextPage;
@end
