//
//  UIView+X.m
//  TrashCodes
//
//  Created by liuxu on 2019/3/13.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import "UIView+X.h"

@implementation UIView (X)

- (xv_Block)x_tag {
    xv_Block block = ^UIView* (NSNumber *tag) {
        self.tag = tag.integerValue;
        return self;
    };
    return block;
}

- (xv_Block)x_frame {
    xv_Block block = ^UIView* (NSValue *frame) {
        self.frame = frame.CGRectValue;
        return self;
    };
    return block;
}


- (xv_Block)x_sizeToFit {
    xv_Block block = ^UIView* (NSNumber *sizeToFit) {
        if (sizeToFit.boolValue) {
            [self sizeToFit];
        }
        return self;
    };
    return block;
}

- (xv_Block)x_clipToBounds {
    xv_Block block = ^UIView* (NSNumber *clipToBounds) {
        self.clipsToBounds = clipToBounds.boolValue;
        return self;
    };
    return block;
}

- (xv_Block)x_backgroundColor {
    xv_Block block = ^UIView* (UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
    return block;
}

- (xv_Block)x_alpha {
    xv_Block block = ^UIView* (NSNumber *alpha) {
        self.alpha = alpha.floatValue;
        return self;
    };
    return block;
}

- (xv_Block)x_opaque {
    xv_Block block = ^UIView* (NSNumber *opaque) {
        self.opaque = opaque.boolValue;
        return self;
    };
    return block;
}

- (xv_Block)x_hidden {
    xv_Block block = ^UIView* (NSNumber *hidden) {
        self.hidden = hidden.boolValue;
        return self;
    };
    return block;
}

- (xv_Block)x_contentMode {
    xv_Block block = ^UIView* (NSNumber *mode) {
        self.contentMode = mode.integerValue;
        return self;
    };
    return block;
}

#pragma mark - CALayer

- (xv_Block)x_cornerRadius {
    xv_Block block = ^UIView* (NSNumber *cornerRadius) {
        self.layer.cornerRadius = cornerRadius.floatValue;
        return self;
    };
    return block;
}

- (xv_Block)x_maskToBounds {
    xv_Block block = ^UIView* (NSNumber *maskToBounds) {
        self.layer.masksToBounds = maskToBounds.boolValue;
        return self;
    };
    return block;
}

- (xv_Block)x_borderColor {
    xv_Block block = ^UIView* (UIColor *color) {
        self.layer.borderColor = color.CGColor;
        return self;
    };
    return block;
}

- (xv_Block)x_borderWidth {
    xv_Block block = ^UIView* (NSNumber *width) {
        self.layer.borderWidth = width.floatValue;
        return self;
    };
    return block;
}

- (xv_Block)x_shadowColor {
    xv_Block block = ^UIView* (UIColor *color) {
        self.layer.shadowColor = color.CGColor;
        return self;
    };
    return block;
}

- (xv_Block)x_shadowOpacity {
    xv_Block block = ^UIView* (NSNumber *opacity) {
        self.layer.shadowOpacity = opacity.floatValue;
        return self;
    };
    return block;
}

- (xv_Block)x_shadowOffset_layer {
    xv_Block block = ^UIView* (NSValue *value) {
        self.layer.shadowOffset = value.CGSizeValue;
        return self;
    };
    return block;
}

- (xv_Block)x_shadowPath {
    xv_Block block = ^UIView* (UIBezierPath *path) {
        self.layer.shadowPath = path.CGPath;
        return self;
    };
    return block;
}

- (xv_Block)x_shadowRadius {
    xv_Block block = ^UIView* (NSNumber *radius) {
        self.layer.shadowRadius = radius.floatValue;
        return self;
    };
    return block;
}
@end
