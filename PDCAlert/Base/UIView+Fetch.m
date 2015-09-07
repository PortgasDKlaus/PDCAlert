//
//  UIView+Fetch.m
//  PDCNetwork
//
//  Created by portgasdcrow on 15/9/6.
//  Copyright (c) 2015年 PDC. All rights reserved.
//

#import "UIView+Fetch.h"



@implementation UIView(layerFetch)

/*
 draw border for view
 */
- (void)drawBorder:(UIView *)_view type:(PDCBASIC_BorderType)_type lineColor:(UIColor *)_color
{
    UIBezierPath *maskPath;
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    _view.layer.masksToBounds = YES;

#pragma mark - Normal
    switch (_type) {
        case V_PDCBASIC_Border_Round:
            _view.layer.cornerRadius = 4;
            break;
        case V_PDCBASIC_Border_RoundLine:
            _view.layer.cornerRadius = 0;
            _view.layer.borderWidth = 1;
            _view.layer.borderColor = [_color CGColor];
            break;
        case V_PDCBASIC_Border_Normal:
            _view.layer.cornerRadius = 0;
            break;
        case V_PDCBASIC_Border_NormalLine:
            _view.layer.cornerRadius = 0;
            _view.layer.borderWidth = 1;
            _view.layer.borderColor = [_color CGColor];
            break;

#pragma mark - Irregular

        case V_PDCBASIC_Border_IrregularLeft:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:_view.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
            maskLayer.frame = _view.bounds;
            maskLayer.path = maskPath.CGPath;
            _view.layer.mask = maskLayer;
            break;
        case V_PDCBASIC_Border_IrregularLeftLine:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:_view.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
            maskLayer.frame = _view.bounds;
            maskLayer.path = maskPath.CGPath;
            maskLayer.borderWidth = 1;
            maskLayer.borderColor = [_color CGColor];
            _view.layer.mask = maskLayer;

            break;
        case V_PDCBASIC_Border_IrregularRignt:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:_view.bounds byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
            maskLayer.frame = _view.bounds;
            maskLayer.path = maskPath.CGPath;
            _view.layer.mask = maskLayer;
            break;
        case V_PDCBASIC_Border_IrregularRigntLine:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:_view.bounds byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
            maskLayer.frame = _view.bounds;
            maskLayer.path = maskPath.CGPath;
            maskLayer.borderWidth = 1;
            maskLayer.borderColor = [_color CGColor];
            _view.layer.mask = maskLayer;
            break;

        case V_PDCBASIC_Border_IrregularTop:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:_view.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(10, 10)];
            maskLayer.frame = _view.bounds;
            maskLayer.path = maskPath.CGPath;
            _view.layer.mask = maskLayer;
            break;
        case V_PDCBASIC_Border_IrregularTopLine:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:_view.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(10, 10)];
            maskLayer.frame = _view.bounds;
            maskLayer.path = maskPath.CGPath;
            maskLayer.borderWidth = 1;
            maskLayer.borderColor = [_color CGColor];
            _view.layer.mask = maskLayer;
            break;
        case V_PDCBASIC_Border_IrregularBottom:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:_view.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
            maskLayer.frame = _view.bounds;
            maskLayer.path = maskPath.CGPath;
            _view.layer.mask = maskLayer;
            break;
        case V_PDCBASIC_Border_IrregularBottomLine:
            maskPath = [UIBezierPath bezierPathWithRoundedRect:_view.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
            maskLayer.frame = _view.bounds;
            maskLayer.path = maskPath.CGPath;
            maskLayer.borderWidth = 1;
            maskLayer.borderColor = [_color CGColor];
            _view.layer.mask = maskLayer;
            break;

        default:
            break;
    }
}

- (void)drawShadow:(UIView *)_view color:(UIColor *)_color{
    [[_view layer] setShadowOffset:CGSizeMake(1, 1)];
    [[_view layer] setShadowRadius:2];
    [[_view layer] setShadowOpacity:.2];
    [[_view layer] setShadowColor:_color.CGColor];
}


@end
