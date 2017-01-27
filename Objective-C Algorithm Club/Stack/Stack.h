//
//  Stack.h
//  Objective-C Algorithm Club
//
//  Created by Admin on 1/26/17.
//  Copyright © 2017 AAkash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack: NSObject

@property (nonatomic) NSMutableArray *array;
@property (nonatomic) NSInteger count;
@property (nonatomic) BOOL isEmpty;

-(instancetype)initWithArray:(NSMutableArray*)array;

-(void)push:(id)element;

-(id)pop;

-(id)top;

@end
