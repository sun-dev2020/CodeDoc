//
//  UIView+SizeOfView.m
//  CodeDoc
//
//  Created by mac on 15/10/30.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

#import "UIView+SizeOfView.h"

@implementation UIView (SizeOfView)


- (float)viewWidth{
    return self.frame.size.width;
}

- (void)setHeight:(float)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (float)viewHeight{
    return self.frame.size.height;
}

@end
