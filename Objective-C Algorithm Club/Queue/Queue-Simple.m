//
//  Queue.m
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/27/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import "Queue-Simple.h"

@implementation Queue

-(instancetype)initWithArray:(NSMutableArray *)array {
    self = [super init];
    
    if (self) {
        self.array = array;
    }
    
    return self;
}

-(NSInteger)count {
    return self.array.count;
}

-(BOOL)isEmpty {
    return (self.array.count == 0) ? YES : NO;
}

-(void)enqueue:(id)element {
    [self.array addObject:element];
}

-(id)dequeue {
    if (self.isEmpty) {
        return nil;
    } else {
        NSObject *element = [self.array objectAtIndex:0];
        [self.array removeObjectAtIndex:0];
        return element;
    }
}

-(id)front {
    if (self.isEmpty) {
        return nil;
    } else {
        return [self.array objectAtIndex:0];
    }
}

@end
