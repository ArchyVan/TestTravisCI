//
//  ViewController.m
//  TestTravisCI
//
//  Created by Objective-C on 2016/10/17.
//  Copyright © 2016年 Archy Van. All rights reserved.
//

#import "ViewController.h"
#import "TestManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",[[TestManager new] methodOne]);
}


@end
