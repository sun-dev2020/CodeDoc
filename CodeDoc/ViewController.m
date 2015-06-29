//
//  ViewController.m
//  CodeDoc
//
//  Created by mac on 15/6/29.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

/*!
 @header ViewController.h
 @brief This is the header file where my super-code is contains
 
 @author Micheal
 @copyright 2015 treebear.com
 @version   1.0.0

*/
#import "ViewController.h"


/*!
 @class  ViewController
 @brief  The ViewController Class
 @discussion This class was designed and implemented to help
 
 @superclass  SuperClass: UIViewController\n
 @classdesign  No sepecial design is applied here
 @helps   No helper
 
*/
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _fileName = [NSString stringWithFormat:@"fileName"];
    
    float celsius = [self toCelcius:120.0f];
    NSLog(@" celsius == %f ",celsius);
    

}

/*!
 @brief 将华氏度转化成摄氏度
 @discussion  该函数接受float类型参数 并返回float参数

 @param 华氏度参数
 @return 返回摄氏度参数
*/
-(float )toCelcius:(float) fromFahrenheit{
    return  (fromFahrenheit - 32) / 1.8 ;
}

/*!
 @brief 将摄氏度转成华氏度
 @param fromCelcius 摄氏度参数
 @return 转化后的华氏度
 @code
   float f = [self toCelcius:120];
 @endcode
 
*/
-(float )toFahrenheit:(float) fromCelcius{
    return fromCelcius * 1.8 + 32;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
