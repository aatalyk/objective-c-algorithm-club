//
//  InsertionSort.h
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/28/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InsertionSort : NSObject

@property (nonatomic) NSMutableArray *array;

-(instancetype)initWithArray:(NSMutableArray*)array;

-(NSMutableArray*)insertionSort:(NSMutableArray*)array;

@end
