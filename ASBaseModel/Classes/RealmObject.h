//
//  RealmObject.h
//  hxxdj
//
//  Created by lyh on 2019/7/29.
//  Copyright © 2019 aisino. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RealmObject : NSObject


+ (void)setupDefaultRealm;

+ (void)setupRealmWithUsername:(NSString *)username;

@end

NS_ASSUME_NONNULL_END
