//
//  MyObject.m
//  CodeDoc
//
//  Created by mac on 15/7/21.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject
{
    blk _blk;
}
-(instancetype)init{
    self = [super init];
    __weak MyObject *copySelf = self;
    _blk = ^{
        NSLog(@" self : %@ ",copySelf);
    };
    
    return self;
}

@end
