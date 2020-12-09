//
//  RealmObject.m
//  hxxdj
//
//  Created by lyh on 2019/7/29.
//  Copyright © 2019 aisino. All rights reserved.
//

#import "RealmObject.h"
#import <Realm/Realm.h>
#define REALM_VERSION 1
@implementation RealmObject

+ (void)setupDefaultRealm {
    [RealmObject setupRealmWithUsername:@"default"];
}

+ (void)setupRealmWithUsername:(NSString *)username {
    if (!username) {
        username = @"default";
        return;
    }
    //先获取默认配置
    RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
    config.schemaVersion = REALM_VERSION;
    config.deleteRealmIfMigrationNeeded = true;
    // 使用默认的目录，但是使用用户名来替换默认的文件名
    config.fileURL = [[[config.fileURL URLByDeletingLastPathComponent]
                       URLByAppendingPathComponent:username]
                      URLByAppendingPathExtension:@"realm"];
    // 1. 设置新的架构版本。这个版本号必须高于之前所用的版本号（如果您之前从未设置过架构版本，那么这个版本号设置为 0）
    // 2. 设置闭包，这个闭包将会在打开低于上面所设置版本号的 Realm 数据库的时候被自动调用
    [config setMigrationBlock:^(RLMMigration *migration, uint64_t oldSchemaVersion){
        if (oldSchemaVersion < REALM_VERSION) {
            NSLog(@"数据库已升级到%d版本",REALM_VERSION);
        }
    }];
    // 3. 告诉 Realm 为默认的 Realm 数据库使用这个新的配置对象
    [RLMRealmConfiguration setDefaultConfiguration:config];
    // 4. 现在我们已经告诉了 Realm 如何处理架构的变化，打开文件之后将会自动执行迁移
    [RLMRealm defaultRealm];
}

@end
