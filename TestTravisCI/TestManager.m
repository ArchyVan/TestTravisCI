//
//  TestManager.m
//  TestTravisCI
//
//  Created by Objective-C on 2016/10/18.
//  Copyright © 2016年 Archy Van. All rights reserved.
//

#import "TestManager.h"

@implementation TestManager

- (TestManager *(^)())methodOne
{
    return ^{
        NSLog(@"Hello ,World");
        return self;
    };
}

- (TestManager *(^)(NSString *))methodTwo
{
    return ^(NSString *message){
        NSLog(@"Hi, %@",message);
        return self;
    };
}

- (TestManager *(^)(TestBlock))methodThird
{
    return ^(TestBlock block){
        block(@"Test");
        return self;
    };
}

- (TestManager *(^)(BlockBlock))methodFourth
{
    return ^(BlockBlock block){
        block(^(NSString *test){
            NSLog(@"Block Block %@",test);
            return [NSString stringWithFormat:@"Block Block %@",test];
        });
        return self;
    };
}

@end
