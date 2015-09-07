//
//  PDCPopAlertView.m
//  PDCProject
//
//  Created by portgasdcrow on 15/5/20.
//  Copyright (c) 2015年 LiuJie. All rights reserved.
//

#import "PDCAlert.h"

static PDCAlert *alert;

#define k_alert_width       260
#define k_alert_heightSlip  80

#define k_Color_BtnBG [UIColor colorWithRed:238/255.0f green:221/255.0f blue:130/255.0f alpha:1.]

@implementation PDCAlert

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {}
    return self;
}

- (UIImageView *)imageV{
    if (!_imageV) {
        float imageW = 100.;
        _imageV = [[UIImageView alloc] initWithFrame:CGRectMake((alert.frame.size.width - imageW)/2, 40, imageW, imageW)];
        _imageV.backgroundColor = [UIColor clearColor];
        [self addSubview:_imageV];
    }
    return _imageV;
}

- (UILabel *)messageL{
    if (!_messageL) {
        _messageL = [[UILabel alloc] initWithFrame:CGRectMake(10, _imageV.frame.origin.y + _imageV.frame.size.height + 20, alert.frame.size.width - 20, 60)];
        _messageL.font = [UIFont fontWithName:@"Arial" size:16];
        _messageL.backgroundColor = [UIColor clearColor];
        _messageL.textAlignment = NSTextAlignmentCenter;
        _messageL.lineBreakMode = NSLineBreakByCharWrapping;
        _messageL.numberOfLines = 3;
        _messageL.textColor = [UIColor colorWithRed:51./255. green:51./255. blue:51./255. alpha:1.];
        [self addSubview:_messageL];
    }
    return _messageL;
}

+ (void)popAlertWithMessage:(NSString *)message image:(UIImage *)image complete:(CompleteBlock)complete selected:(SelectBlock)selected buttons:(NSString *)title, ... NS_REQUIRES_NIL_TERMINATION {

    va_list args;
    va_start(args, title); // scan for arguments after firstObject.

    NSMutableArray *typeArray = [[NSMutableArray alloc] init];

    // get rest of the objects until nil is found
    NSMutableString *allStr = [[NSMutableString alloc] initWithCapacity:16];
    for (NSString *str = title; str != nil; str = va_arg(args,NSString*)) {
        [allStr appendFormat:@"* %@ ",str];
        [typeArray addObject:str];
    }

    va_end(args);

    alert = [[PDCAlert alloc] initWithFrame:CGRectMake(0, 0, k_alert_width, 260 + typeArray.count * 50)];
    float imageW = 100.;
    alert.frame = CGRectMake(0, 0, k_alert_width, 260 + typeArray.count * 50);
    alert.imageV.frame = CGRectMake((alert.frame.size.width - imageW)/2, 40, imageW, imageW);
    alert.messageL.frame = CGRectMake(10, alert.imageV.frame.origin.y + alert.imageV.frame.size.height + 20, alert.frame.size.width - 20, 60);
    alert.completeBlock = complete;
    alert.selectBlock = selected;
    alert.imageV.image = image;
    alert.messageL.text = message;
    [alert addButtons:typeArray];

    [alert setShowBool:YES];
}

- (void)addButtons:(NSMutableArray *)array{
    float slip_x = 30.;
    float slip_y = 10.;
    float height = 40.;
    for (int i = 0; i < array.count; i ++){
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(slip_x, 240 +  (height + slip_y) * i, alert.frame.size.width - slip_x * 2, height)];
        btn.tag = i;
        btn.backgroundColor = k_Color_BtnBG;
        [btn setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnPress:) forControlEvents:UIControlEventTouchUpInside];
        [alert addSubview:btn];
    }
}

- (void)btnPress:(UIButton *)sender{
    PDCBasicModel *model = [[PDCBasicModel alloc] init];
    model.method = @"PDCAlertPress";
    model.index = sender.tag;

    self.selectBlock(model);

    [PDCAlert hide];
}

- (void)removeButtons{
    for (UIButton *btn in alert.subviews) {
        [btn removeFromSuperview];
    }
}

+ (void)hide{
    [alert removeButtons];
    [alert hiddenView];
}

#pragma mark - POP

- (void)setShowBool:(BOOL)showBool
{
    self.hidden = !showBool;
    if (showBool) {
        [self pop];
    }else{

    }

    self.completeBlock();
}


- (void)pop
{
    [[KGModal sharedInstance] setModalBackgroundColor:[UIColor whiteColor]];
    [[KGModal sharedInstance] showWithContentView:self andAnimated:YES];
}

- (void)hiddenView
{
    [[KGModal sharedInstance] hideAnimated:YES];
}


@end
