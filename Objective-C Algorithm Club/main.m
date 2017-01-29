//
//  main.m
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/27/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Queue-Simple.h"
#import "InsertionSort.h"
#import "BinarySearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Queue *queue = [[Queue alloc] initWithArray:[NSMutableArray new]];
        [queue enqueue:@1];
        
        NSMutableArray *array = [[NSMutableArray alloc] initWithArray:@[@1, @2, @3, @4]];
        
        InsertionSort *insertionSort = [[InsertionSort alloc] initWithArray:array];
        NSMutableArray *neArray = [[NSMutableArray alloc] initWithArray:[insertionSort insertionSort:array]];
        
        BinarySearch *binarySearch  = [[BinarySearch alloc] init];
        NSArray *a = @[@1, @2, @3, @4, @5, @8, @9, @11];
        NSInteger index = [binarySearch binarySearch:a key:@4 range:NSMakeRange(0, a.count-1)];
        printf("%ld", index);
        
    }
    return 0;
}
