//
//  PDCPopAlertView.h
//  PDCProject
//
//  Created by portgasdcrow on 15/5/20.
//  Copyright (c) 2015年 LiuJie. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PDCBasicModel.h"

#import "KGModal.h"

/**
 *  Handler处理完成后调用的Block
 */
typedef void (^CompleteBlock)();

/**
 *  Handler处理成功时调用的Block
 */
typedef void (^SelectBlock)(id obj);

@interface PDCAlert : UIView

@property (nonatomic,copy) CompleteBlock completeBlock;
@property (nonatomic,copy) SelectBlock selectBlock;

@property (nonatomic, strong) UIImageView *imageV;
@property (nonatomic, strong) UILabel *messageL;

/*
    pop a PDCAlert
    Param:
    message/image
    complete/selected
    title...(lot of buttons title)
 */
+ (void)popAlertWithMessage:(NSString *)message image:(UIImage *)image complete:(CompleteBlock)complete selected:(SelectBlock)selected buttons:(NSString *)title, ... NS_REQUIRES_NIL_TERMINATION;

+ (void)hide;

@end
