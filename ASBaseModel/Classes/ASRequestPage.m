//
//  ASRequestPage.m
//  hxxdj
//
//  Created by 刘 on 2018/8/27.
//  Copyright © 2018年 aisino. All rights reserved.
//

#import "ASRequestPage.h"

@implementation ASRequestPage
+ (instancetype)defaultPage
{
    ASRequestPage *page = [[self alloc] init];
    page.pageNum = 0;
    page.pages = page.pageNum + 1;
    return page;
}

- (instancetype)init
{
    if (self = [super init]) {
        _pageSize = 10;
    }
    return self;
}

- (NSMutableDictionary *)nextPage
{
    if (_pageNum >= _pages) {
        return nil;
    }
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithCapacity:2];
    params[@"pageNum"] = @(_pageNum + 1);
    params[@"pageSize"] = @(_pageSize);
    return params;
}

- (NSMutableDictionary *)zeroPage
{
    if (_pageNum >= _pages) {
        return nil;
    }
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithCapacity:2];
    params[@"pageNum"] = @(_pageNum);
    params[@"pageSize"] = @(_pageSize);
    return params;
}

@end
