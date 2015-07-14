//
//  SecViewController.m
//  CodeDoc
//
//  Created by mac on 15/6/29.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.navigationController.navigationBar.;
    NSLog(@"  back == %@   ",self.navigationController.navigationBar.items);
    int num = 1000000;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    for (int i = num; i < num; i++) {
        [self.view insertSubview:view atIndex:0];
    }
    NSString *string = @"ASDSDASDAS";
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 20)];
    label.text = string;
    label.textColor = [UIColor whiteColor];
    [label setNeedsDisplay];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
