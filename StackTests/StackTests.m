//
//  StackTest.m
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/26/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Stack.h"

@interface StackTests : XCTestCase

@end

@implementation StackTests

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

#pragma mark - Custom Tests
-(void)testEmpty {
    NSMutableArray *array = [NSMutableArray new];
    Stack *stack = [[Stack alloc] initWithArray:array];
    XCTAssertTrue([stack isEmpty]);
    XCTAssertEqual([stack count], 0);
    XCTAssertEqual([stack top], nil);
    XCTAssertNil([stack pop]);
}

-(void)testOneElement {
    NSMutableArray *array = [NSMutableArray new];
    Stack *stack = [[Stack alloc] initWithArray:array];
    
    [stack push:@123];
    
    printf("%ld\n", [stack count]);
    
    XCTAssertFalse([stack isEmpty]);
    XCTAssertEqual([stack count], 1);
    XCTAssertEqual([stack top], @123);
    
    NSObject *result = [stack pop];
    XCTAssertEqual(result, @123);
    XCTAssertTrue([stack isEmpty]);
    XCTAssertEqual([stack count], 0);
    XCTAssertEqual([stack top], nil);
    XCTAssertNil([stack pop]);
}

-(void)testTwoElements {
    NSMutableArray *array = [NSMutableArray new];
    Stack *stack = [[Stack alloc] initWithArray:array];
    
    [stack push:@123];
    [stack push:@456];
    
    XCTAssertFalse([stack isEmpty]);
    XCTAssertEqual([stack count], 2);
    XCTAssertEqual([stack top], @456);
    
    NSObject *result1 = [stack pop];
    XCTAssertEqual(result1, @456);
    XCTAssertFalse([stack isEmpty]);
    XCTAssertEqual([stack count], 1);
    XCTAssertEqual([stack top], @123);
    
    NSObject *result2 = [stack pop];
    XCTAssertEqual(result2, @123);
    XCTAssertTrue([stack isEmpty]);
    XCTAssertEqual([stack count], 0);
    XCTAssertEqual([stack top], nil);
    XCTAssertNil([stack top]);
}

-(void)testMakeEmpty {
    NSMutableArray *array = [NSMutableArray new];
    Stack *stack = [[Stack alloc] initWithArray:array];
    
    [stack push:@123];
    [stack push:@456];
    
    XCTAssertNotNil([stack pop]);
    XCTAssertNotNil([stack pop]);
    XCTAssertNil([stack pop]);
    
    [stack push:@789];
    XCTAssertEqual([stack count], 1);
    XCTAssertEqual([stack top], @789);
    
    NSObject *result = [stack pop];
    XCTAssertEqual(result, @789);
    XCTAssertTrue([stack isEmpty]);
    XCTAssertEqual([stack count], 0);
    XCTAssertEqual([stack top], nil);
    XCTAssertNil([stack top]);
}

@end
