//
//  Stack.m
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/26/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import "Stack.h"

@implementation Stack

-(instancetype)initWithArray:(NSMutableArray*)array {
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

-(void)push:(id)element {
    [self.array addObject:element];
}

-(id)pop {
    NSObject *element = [self.array lastObject];
    [self.array removeLastObject];
    return element;
}

-(id)top {
    return [self.array lastObject];
}

@end
