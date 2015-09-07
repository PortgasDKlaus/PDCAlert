//
//  PDCBasicModel.h
//  PDCProject
//
//  Created by PortgasDKluas on 14-8-22.
//  Copyright (c) 2014年 LiuJie. All rights reserved.
//

#import <Foundation/Foundation.h>

#define k_Fun_TBSelect @"didSelect"

@interface PDCBasicModel : NSObject

@property (nonatomic, strong) NSString *status_code;// status code.

@property (nonatomic, strong) NSString *status_message;// status message.

@property (nonatomic, strong) NSString *method;// call back method name.

@property (nonatomic) NSUInteger index;// int type.

@property (nonatomic) NSUInteger section;// deep int type.

@property (nonatomic, strong) NSMutableDictionary *dictionary;// dictionary type.
@property (nonatomic, strong) NSMutableArray *array;// array type , send a lot obj.

@end
