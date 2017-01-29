//
//  BinarySearch.m
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/29/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

-(NSInteger)binarySearch:(NSArray *)array key:(NSObject *)key range:(NSRange)range {
    if (range.location >= range.length) {
        return nil;
    } else {
        NSInteger midIndex = range.location + (range.length - range.location)/2;
        if (array[midIndex] > key) {
            return [self binarySearch:array key:key range:NSMakeRange(range.location, midIndex-1)];
        } else if (array[midIndex] < key) {
            return [self binarySearch:array key:key range:NSMakeRange(midIndex+1, range.length-1)];
        } else {
            return midIndex;
        }
    }
}

@end
