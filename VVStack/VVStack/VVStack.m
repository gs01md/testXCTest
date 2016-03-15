//
//  VVStack.m
//  VVStack
//
//  Created by WoodGao on 16/3/13.
//  Copyright © 2016年 wood. All rights reserved.
//

#import "VVStack.h"

@interface VVStack (){
    
}

@property (nonatomic, strong) NSMutableArray *numbers;

@end

@implementation VVStack

-(id) init {
    
    if (self = [super init]) {
        
        _numbers = [NSMutableArray new];
    }
    
    return self;
}

-(void) push:(double)num{
    
    [self.numbers addObject:@(num)];
}

-(double) top {
    
    return [[self.numbers lastObject] doubleValue];
}
@end
