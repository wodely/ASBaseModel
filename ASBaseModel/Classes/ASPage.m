//
//  ASPage.m
//  hxxdj
//
//  Created by 刘 on 2018/12/12.
//  Copyright © 2018年 aisino. All rights reserved.
//

#import "ASPage.h"

@implementation ASPage
+ (instancetype)defaultPage
{
    ASPage *page = [[self alloc] init];
    page.current = 0;
    page.pages = page.current + 1;
    return page;
}

- (instancetype)init
{
    if (self = [super init]) {
        _size = 10;
    }
    return self;
}

- (NSMutableDictionary *)nextPage
{
    if (_current >= _pages) {
        return nil;
    }
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithCapacity:2];
    params[@"current"] = @(_current + 1);
    params[@"size"] = @(_size);
    return params;
}

@end
