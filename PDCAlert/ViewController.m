//
//  ViewController.m
//  PDCAlert
//
//  Created by portgasdcrow on 15/9/7.
//  Copyright (c) 2015年 PDC. All rights reserved.
//

#import "ViewController.h"

#import "PDCAlert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.title = @"ViewController";

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(40, k_ScreenH/2 - 20, k_ScreenW - 80, 40)];
    btn.backgroundColor = k_Color_BtnBG;
    [btn setTitle:@"Next" forState:UIControlStateNormal];
    [btn setTitleColor:k_Color_BtnText forState:UIControlStateNormal];
    [btn setTitleColor:k_Color_BtnTextH forState:UIControlStateHighlighted];

    [btn drawBorder:btn type:V_PDCBASIC_Border_Round lineColor:[UIColor clearColor]];
    [btn drawShadow:btn color:[UIColor greenColor]];

    [btn addTarget:self action:@selector(popPress) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:btn];
}

- (void)popPress{
    [PDCAlert popAlertWithMessage:@"你要说什么" image:[UIImage imageNamed:@"awuu"] complete:^{
        // do anything after complete.
    } selected:^(PDCBasicModel *model){
        if (model.index == 0) {
            NSLog(@"确定");
        }else{
            //...
        }

    }buttons:@"确定",@"取消",@"坑爹", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
