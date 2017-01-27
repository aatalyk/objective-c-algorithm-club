//
//  QueueTests.m
//  QueueTests
//
//  Created by Admin on 1/28/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Queue-Simple.h"

@interface QueueTests : XCTestCase

@end

@implementation QueueTests

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

-(void)testEmpty {
    NSMutableArray *array = [NSMutableArray new];
    Queue *queue = [[Queue alloc] initWithArray:array];
    
    XCTAssertTrue(queue.isEmpty);
    XCTAssertEqual(queue.count, 0);
    XCTAssertEqual(queue.front, nil);
    XCTAssertNil([queue dequeue]);
}

-(void)testOneElement {
    NSMutableArray *array = [NSMutableArray new];
    Queue *queue = [[Queue alloc] initWithArray:array];
    
    [queue enqueue:@123];
    XCTAssertFalse(queue.isEmpty);
    XCTAssertEqual(queue.count, 1);
    XCTAssertEqual(queue.front, @123);
    
    NSObject *result = [queue dequeue];
    XCTAssertEqual(result, @123);
    XCTAssertTrue(queue.isEmpty);
    XCTAssertEqual(queue.count, 0);
    XCTAssertEqual(queue.front, nil);
}

-(void)testTwoElements {
    NSMutableArray *array = [NSMutableArray new];
    Queue *queue = [[Queue alloc] initWithArray:array];
    
    [queue enqueue:@123];
    [queue enqueue:@456];
    XCTAssertFalse(queue.isEmpty);
    XCTAssertEqual(queue.count, 2);
    XCTAssertEqual(queue.front, @123);
    
    NSObject *result1 = [queue dequeue];
    XCTAssertEqual(result1, @123);
    XCTAssertFalse(queue.isEmpty);
    XCTAssertEqual(queue.count, 1);
    XCTAssertEqual(queue.front, @456);
    
    NSObject *result2 = [queue dequeue];
    XCTAssertEqual(result2, @456);
    XCTAssertTrue(queue.isEmpty);
    XCTAssertEqual(queue.count, 0);
    XCTAssertEqual(queue.front, nil);
}

-(void)testMakeEmpty {
    NSMutableArray *array = [NSMutableArray new];
    Queue *queue = [[Queue alloc] initWithArray:array];
    
    [queue enqueue:@123];
    [queue enqueue:@456];
    XCTAssertNotNil([queue dequeue]);
    XCTAssertNotNil([queue dequeue]);
    XCTAssertNil([queue dequeue]);
    
    [queue enqueue:@789];
    XCTAssertEqual(queue.count, 1);
    XCTAssertEqual(queue.front, @789);
    
    NSObject *result = [queue dequeue];
    XCTAssertEqual(result, @789);
    XCTAssertTrue(queue.isEmpty);
    XCTAssertEqual(queue.count, 0);
    XCTAssertEqual(queue.front, nil);
}

@end
