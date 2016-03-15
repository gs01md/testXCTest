//
//  VVStackTests.m
//  VVStackTests
//
//  Created by WoodGao on 16/3/13.
//  Copyright © 2016年 wood. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "VVStack.h"

@interface VVStackTests : XCTestCase

@end

@implementation VVStackTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

/**
 *  类 VVStack 是否存在
 */
- (void) testStackExist {
    
    XCTAssertNotNil([VVStack class], @"VVStack class should exist.");
}

/**
 *  类 VVStack 是否可以被创建
 */
- (void) testStackObjectCanBeCreated {
    
    VVStack * stack = [VVStack new];
    
    XCTAssertNotNil(stack, @"VVStack object can be created.");
}

- (void) testPushANumberAndGetIt {
    
    VVStack *stack = [VVStack new];
    
    [stack push:2.3];
    
    double topNumber = [stack top];
    
    XCTAssertEqual(topNumber,2.3, @"VVStack should can be pushed and has that top value.");
    
    [stack push:4.6];
    topNumber = [stack top];
    
    XCTAssertEqual(topNumber,4.6, @"VVStack should can be pushed and has that top value.");
}


@end
