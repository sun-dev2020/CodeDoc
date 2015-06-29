//
//  ViewController.h
//  CodeDoc
//
//  Created by mac on 15/6/29.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

#import <UIKit/UIKit.h>

/*!
 @protocol ViewControllerDelegate
 @brief The ViewControllerDelegate protocol
 It is protocol used as demo here.
*/
@protocol ViewControllerDelegate

-(void) thisIsDelegateMethod;

@end

/*!
 @typedef WeatherConditionsInDays
 @brief  A struct about the weather
 
 @field sun Good weather
 @field clounds Where is the sun ?
 @field Get an umbrella
 @field Watch out .... A snowball is coming!
*/
typedef struct {
    int sun ;
    int clouds ;
    int rain ;
    int snow ;
} WeatherConditionsInDays;


@interface ViewController : UIViewController



/*! @brief This property konws fileName */       //@brief 可以省略
@property (nonatomic, strong) NSString *fileName;

/** 用户名属性参数 */
@property (nonatomic, strong) NSString *userName;

/// 年纪属性参数 */
@property (nonatomic, strong) NSString *ageString;




/*!
 @brief 将华氏度转化成摄氏度
 @discussion  该函数接受float类型参数 并返回float参数
 
 @param 华氏度参数
 @return 返回摄氏度参数
 */
-(float )toCelcius:(float) fromFahrenheit;

/*!
 @brief 将摄氏度转成华氏度
 @param fromCelcius 摄氏度参数
 @return 转化后的华氏度
 @code
 float f = [self toCelcius:120];
 @endcode
 
 */
-(float )toFahrenheit:(float) fromCelcius;

@end

