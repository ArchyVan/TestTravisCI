//
//  TestManager.h
//  TestTravisCI
//
//  Created by Objective-C on 2016/10/18.
//  Copyright © 2016年 Archy Van. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSString *(^TestBlock)(NSString *test);
typedef void(^BlockBlock)(TestBlock block);

@interface TestManager : NSObject

- (TestManager *(^)())methodOne;

- (TestManager *(^)(NSString *message))methodTwo;

- (TestManager *(^)(TestBlock block))methodThird;

- (TestManager *(^)(BlockBlock block))methodFourth;

@end
