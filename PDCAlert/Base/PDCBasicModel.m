//
//  PDCBasicModel.m
//  PDCProject
//
//  Created by PortgasDKluas on 14-8-22.
//  Copyright (c) 2014年 LiuJie. All rights reserved.
//

#import "PDCBasicModel.h"

@implementation PDCBasicModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dictionary = [[NSMutableDictionary alloc] init];
        _array = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
