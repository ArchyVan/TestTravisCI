//
//  TestTravisCITests.m
//  TestTravisCITests
//
//  Created by Objective-C on 2016/10/17.
//  Copyright © 2016年 Archy Van. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TestManager.h"

@interface TestTravisCITests : XCTestCase

@end

@implementation TestTravisCITests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMethodOne
{
    if (![[[TestManager new] methodOne] isEqualToString:@"one"]) {
        XCTFail(@"Failed!");
    }
}

@end
