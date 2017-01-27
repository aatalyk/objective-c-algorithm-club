//
//  main.m
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/27/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Queue-Simple.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Queue *queue = [[Queue alloc] initWithArray:[NSMutableArray new]];
        [queue enqueue:@1];
        
        printf("%i", [[queue front] integerValue]);
        
        
    }
    return 0;
}
