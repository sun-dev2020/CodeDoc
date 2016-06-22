//
//  main.m
//  CodeDoc
//
//  Created by mac on 15/6/29.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "MyObject.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
        MyObject *obj = [[MyObject alloc] init];
        NSLog(@"  %@ ",obj);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
