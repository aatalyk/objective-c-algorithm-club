//
//  Queue.h
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/27/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject

@property (nonatomic) NSMutableArray *array;
@property (nonatomic) NSInteger count;
@property (nonatomic) BOOL isEmpty;
@property (nonatomic) NSObject *front;

-(instancetype)initWithArray:(NSMutableArray*)array;

-(void)enqueue:(id)element;

-(id)dequeue;

-(id)front;

@end
