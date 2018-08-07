//
//  ViewController.m
//  HelloBock
//
//  Created by 杨雨东 on 2018/8/7.
//  Copyright © 2018 杨雨东. All rights reserved.
//

#import "ViewController.h"
#import "TestObject.h"

@interface ViewController ()
@property (atomic,strong)TestObject * object;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (int i = 0; i < 100000; i++)
    {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            self.object = [TestObject new];
        });
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            self.object = [TestObject new];
        });
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
