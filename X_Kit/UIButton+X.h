//
//  UIButton+X.h
//  TrashCodes
//
//  Created by liuxu on 2019/3/13.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef UIButton* (^xb_Block)(id);

typedef NS_ENUM(NSUInteger, x_state) {
    x_normal = UIControlStateNormal,
    x_highlighted = UIControlStateHighlighted,
    x_selected = UIControlStateSelected,
    x_disabled = UIControlStateDisabled
};

@interface UIButton (X)

/**
 如果需要设置非Normal状态下 button的各项属性, 需要先调用该属性,将state转为NSNumber 作为参数传入
 如果已经修改过该属性,下次再设置其他属性时,必须再次调用该属性,传入对应的state
 */
@property (nonatomic, copy, readonly) xb_Block x_state;

@property (nonatomic, copy, readonly) xb_Block x_contentEdgeInsets;
@property (nonatomic, copy, readonly) xb_Block x_titleEdgeInsets;
@property (nonatomic, copy, readonly) xb_Block x_imageEdgeInsets;
@property (nonatomic, copy, readonly) xb_Block x_tintColor;

@property (nonatomic, copy, readonly) xb_Block x_title;
@property (nonatomic, copy, readonly) xb_Block x_titleColor;
@property (nonatomic, copy, readonly) xb_Block x_titleShadowColor;
@property (nonatomic, copy, readonly) xb_Block x_image;
@property (nonatomic, copy, readonly) xb_Block x_backgroundImage;
@property (nonatomic, copy, readonly) xb_Block x_attributeTitle;

@property (nonatomic, copy, readonly) xb_Block x_font;
@end

NS_ASSUME_NONNULL_END
