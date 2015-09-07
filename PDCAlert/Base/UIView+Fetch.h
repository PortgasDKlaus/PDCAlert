//
//  UIView+Fetch.h
//  PDCNetwork
//
//  Created by portgasdcrow on 15/9/6.
//  Copyright (c) 2015年 PDC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  border type
 */
typedef enum _PDCBASIC_BorderType{
    V_PDCBASIC_Border_Round = 0,
    V_PDCBASIC_Border_RoundLine,
    V_PDCBASIC_Border_Normal,
    V_PDCBASIC_Border_NormalLine,

    V_PDCBASIC_Border_IrregularLeft,
    V_PDCBASIC_Border_IrregularLeftLine,
    V_PDCBASIC_Border_IrregularRignt,
    V_PDCBASIC_Border_IrregularRigntLine,
    V_PDCBASIC_Border_IrregularTop,
    V_PDCBASIC_Border_IrregularTopLine,
    V_PDCBASIC_Border_IrregularBottom,
    V_PDCBASIC_Border_IrregularBottomLine,
}PDCBASIC_BorderType;

@interface UIView (layerFetch)

- (void)drawBorder:(UIView *)_view type:(PDCBASIC_BorderType)_type lineColor:(UIColor *)_color;// draw border for a view.

- (void)drawShadow:(UIView *)_view color:(UIColor *)_color;// draw shadow for a view.

@end
