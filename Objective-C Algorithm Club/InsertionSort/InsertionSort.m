//
//  InsertionSort.m
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/28/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

-(instancetype)initWithArray:(NSMutableArray*)array {
    self = [super init];
    
    if (self) {
        self.array = array;
    }
    
    return self;
}

-(NSMutableArray*)insertionSort:(NSMutableArray*)array {
    int j;
    NSObject *temp;
    
    for(int i = 0; i<self.array.count; i++) {
        j = i;
        
        while(j>0 && self.array[j]<self.array[j-1]) {
            temp = self.array[j];
            self.array[j] = self.array[j-1];
            self.array[j-1] = temp;
            j--;
        }
    }
    return self.array;
}

@end
