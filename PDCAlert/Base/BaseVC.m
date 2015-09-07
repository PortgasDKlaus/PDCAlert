//
//  BaseVC.m
//  PDCNetwork
//
//  Created by portgasdcrow on 15/9/6.
//  Copyright (c) 2015年 PDC. All rights reserved.
//

#import "BaseVC.h"

@implementation BaseVC

- (void)viewDidLoad{
    [super viewDidLoad];

    self.navigationController.navigationBar.backgroundColor = k_Color_NavBG;
    self.view.backgroundColor = k_Color_Background;
}

@end
