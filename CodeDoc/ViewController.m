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
#import "SecViewController.h"
#import "MyObject.h"
/*!
 @class  ViewController
 @brief  The ViewController Class
 @discussion This class was designed and implemented to help
 
 @superclass  SuperClass: UIViewController\n
 @classdesign  No sepecial design is applied here
 @helps   No helper
 
*/

typedef long(^BlkSum)(int, int);
@interface ViewController ()
{
    NSString *gloabString;
}
@end

@implementation ViewController

static NSString *staticString = nil;

-(void) countDown{
    NSLog(@" down ");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"第一个";
    
    NSArray *arr = @[@"asd",@10,@"sd"];
    
    for (id obj in arr) {
        NSLog(@" Class = %@  ",[obj class]);
    }
    
    _fileName = [NSString stringWithFormat:@"fileName"];
    
    float celsius = [self toCelcius:120.0f];
    NSLog(@" celsius == %@ ",[UIButton class]);
    
//    _timer = [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(countDown) userInfo:nil repeats:YES];
    
    [self testForBlock];
    [self sumBlock];
/*
    NSString *str = @"AAA";
//    __weak NSString *copyStr = str;
    __block int tag = 1 ;
    void (^TestBlock)(NSString *) = ^(NSString *text){
        NSLog(@" text = %@ ",text);
        tag = 2;
//        str = nil;
//        copyStr = @"das";
        gloabString = @"ad";
    };
    TestBlock(str);
    str = @"BBB";
    TestBlock(str);
    
    
    //测试__block修饰符是否能解决循环引用
    MyObject *obj = [[MyObject alloc]init];
    obj.text = @"11111111111111";
    TLog(@"obj",obj);
    __weak MyObject *blockObj = obj;
//    obj = nil;
    void(^testBlock)() = ^(){
        TLog(@"blockObj - block",blockObj);
//        blockObj.text = @"aaa";
//        obj.text = @"";
    };
    testBlock();
    obj = nil;
    testBlock();
    TLog(@"blockObj",blockObj);
   */
    
    UINavigationController *nc = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    SecViewController *sec = [[SecViewController alloc] initWithNibName:nil bundle:nil];
    [nc pushViewController:sec animated:YES];
    
    
}

-(void) testForBlock{
    
    //block基本语法
    // 声明一个Block变量
    long (^sum) (int, int) = nil;
    // sum是个Block变量，该Block类型有两个int型参数，返回类型是long。
    
    // 定义Block并赋给变量sum
    sum = ^ long (int a, int b) {
        return a + b;
    };
    
    // 调用Block：
    long s = sum(1, 2);
    NSLog(@" s: %ld ",s);
    
    
    BlkSum blk1 = ^long (int a,int b){
        return a + b;
    };
    NSLog(@"blk1 内存位置 : %@",blk1);          //NSGlobalBlock：类似函数，位于text段；
    
    int base;
    BlkSum blk2 = ^long (int a, int b){
        return base + a + b;
    };
    NSLog(@"blk2 内存位置 : %@",blk2);
    //在ARC中是NSMallocBlock：位于堆内存。
    //MRC中是NSStackBlock：位于栈内存，函数返回后Block将无效；
    
    BlkSum blk3 = [blk2 copy];
    NSLog(@"blk3 内存位置 : %@",blk3);
    
}

//将block声明成一种类型
-(BlkSum) sumBlock{
    int base = 100;
    NSString *string = @"ABC";
    MyObject *obj = [[MyObject alloc] init];
    BlkSum blk = ^ long (int a,int b){
        staticString = @"AAA";         //静态变量和全局变量能在block中改变值
        gloabString = @"BBB";
        obj.text = nil;
//        base = 90;
        NSLog(@" string: %@ ",string);
        return base + a + b;
    };
    NSLog(@" sum: %ld ",blk(1,2));
    
    base = 200;
    string = @"OOO";
    
    NSLog(@" sum: %ld ",blk(1,2));
    
    return [blk copy];
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
