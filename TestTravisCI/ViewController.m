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
    TestManager *manager = [TestManager new];
    manager.methodOne().methodTwo(@"Archy").methodOne().methodThird(^(NSString *test){
        NSLog(@"123-%@",test);
        return [NSString stringWithFormat:@"123-%@",test];
    }).methodFourth(^(TestBlock block){
        NSLog(@"Test Block");
        block(@"Hello");
    });
}


@end
