//
//  ASRequestPage.h
//  hxxdj
//
//  Created by 刘 on 2018/8/27.
//  Copyright © 2018年 aisino. All rights reserved.
//

#import "ASBaseModel.h"

@interface ASRequestPage : ASBaseModel
@property (nonatomic, assign) NSInteger pageNum;//第几页
@property (nonatomic, assign) NSUInteger pageSize;
@property (nonatomic, assign) NSUInteger total;//总条数
@property (nonatomic, assign) NSUInteger pages; //总页数
//第二种
@property (nonatomic, assign) NSUInteger current; //当前页
@property (nonatomic, assign) NSUInteger size;//每页条数
/**
 *  生成一个默认的page对象，默认pageSize为15，pageNo为1;
 */
+ (instancetype)defaultPage;
- (NSMutableDictionary *)nextPage;
- (NSMutableDictionary *)zeroPage;
@end
