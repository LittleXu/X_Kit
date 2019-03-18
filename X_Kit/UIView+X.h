//
//  UIView+X.h
//  TrashCodes
//
//  Created by liuxu on 2019/3/13.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XKit.h"

NS_ASSUME_NONNULL_BEGIN

typedef UIView* (^xv_Block)(id);

@interface UIView (X)

@property (nonatomic, copy, readonly) xv_Block x_tag;
@property (nonatomic, copy, readonly) xv_Block x_frame;
@property (nonatomic, copy, readonly) xv_Block x_sizeToFit;
@property (nonatomic, copy, readonly) xv_Block x_clipToBounds;
@property (nonatomic, copy, readonly) xv_Block x_backgroundColor;
@property (nonatomic, copy, readonly) xv_Block x_alpha;
@property (nonatomic, copy, readonly) xv_Block x_opaque;
@property (nonatomic, copy, readonly) xv_Block x_hidden;
@property (nonatomic, copy, readonly) xv_Block x_contentMode;

// layer
@property (nonatomic, copy, readonly) xv_Block x_cornerRadius;
@property (nonatomic, copy, readonly) xv_Block x_maskToBounds;
@property (nonatomic, copy, readonly) xv_Block x_borderColor;
@property (nonatomic, copy, readonly) xv_Block x_borderWidth;
@property (nonatomic, copy, readonly) xv_Block x_shadowColor;
@property (nonatomic, copy, readonly) xv_Block x_shadowOpacity;
@property (nonatomic, copy, readonly) xv_Block x_shadowOffset_layer;    // 区分UILabel的shadowOffset
@property (nonatomic, copy, readonly) xv_Block x_shadowRadius;
@property (nonatomic, copy, readonly) xv_Block x_shadowPath;

@end

NS_ASSUME_NONNULL_END
