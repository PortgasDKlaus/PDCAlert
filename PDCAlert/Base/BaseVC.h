//
//  BaseVC.h
//  PDCNetwork
//
//  Created by portgasdcrow on 15/9/6.
//  Copyright (c) 2015年 PDC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIView+Fetch.h"

#define k_ScreenW [UIScreen mainScreen].bounds.size.width
#define k_ScreenH [UIScreen mainScreen].bounds.size.height

#define k_RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

#define k_Color_Main [UIColor colorWithRed:255./255.0f green:228./255.0f blue:196/255.0f alpha:1.]

#define k_Color_Background [UIColor colorWithRed:255./255.0f green:228./255.0f blue:196/255.0f alpha:1.]
#define k_Color_NavBG [UIColor colorWithRed:139/255.0f green:115/255.0f blue:85/255.0f alpha:1.]

#define k_Color_BtnBG [UIColor colorWithRed:238/255.0f green:221/255.0f blue:130/255.0f alpha:1.]
#define k_Color_BtnText [UIColor colorWithRed:139/255.0f green:125/255.0f blue:107/255.0f alpha:1.]
#define k_Color_BtnTextH [UIColor colorWithRed:205/255.0f green:201/255.0f blue:201/255.0f alpha:1.]

@interface BaseVC : UIViewController

@end
