//
//  UIButton+X.m
//  TrashCodes
//
//  Created by liuxu on 2019/3/13.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import "UIButton+X.h"

@interface UIButton ()

@property (nonatomic, assign) x_state _state;

@end

static void *UIBUTTON_STATE_KEY = &UIBUTTON_STATE_KEY;

@implementation UIButton (X)

- (xb_Block)x_state {
    xb_Block block = ^UIButton* (NSNumber *num) {
        self._state = num.integerValue;
        return self;
    };
    return block;
}

- (xb_Block)x_contentEdgeInsets {
    xb_Block block = ^UIButton* (NSValue *value) {
        self.contentEdgeInsets = value.UIEdgeInsetsValue;
        return self;
    };
    return block;
}

- (xb_Block)x_imageEdgeInsets {
    xb_Block block = ^UIButton* (NSValue *value) {
        self.imageEdgeInsets = value.UIEdgeInsetsValue;
        return self;
    };
    return block;
}

- (xb_Block)x_titleEdgeInsets {
    xb_Block block = ^UIButton* (NSValue *value) {
        self.titleEdgeInsets = value.UIEdgeInsetsValue;
        return self;
    };
    return block;
}

- (xb_Block)x_tintColor {
    xb_Block block = ^UIButton* (UIColor *color) {
        self.tintColor = color;
        return self;
    };
    return block;
}

- (xb_Block)x_title {
    xb_Block block = ^UIButton* (NSString *title) {
        [self setTitle:title forState:(UIControlState)self._state];
        return self;
    };
    return block;
}

- (xb_Block)x_titleColor {
    xb_Block block = ^UIButton* (UIColor *color) {
        [self setTitleColor:color forState:(UIControlState)self._state];
        return self;
    };
    return block;
}

- (xb_Block)x_titleShadowColor {
    xb_Block block = ^UIButton* (UIColor *color) {
        [self setTitleShadowColor:color forState:(UIControlState)self._state];
        return self;
    };
    return block;
}

- (xb_Block)x_image {
    xb_Block block = ^UIButton* (UIImage *image) {
        [self setImage:image forState:(UIControlState)self._state];
        return self;
    };
    return block;
}

- (xb_Block)x_backgroundImage {
    xb_Block block = ^UIButton* (UIImage *image) {
        [self setBackgroundImage:image forState:(UIControlState)self._state];
        return self;
    };
    return block;
}

- (xb_Block)x_attributeTitle {
    xb_Block block = ^UIButton* (NSAttributedString *attr) {
        [self setAttributedTitle:attr forState:(UIControlState)self._state];
        return self;
    };
    return block;
}

- (xb_Block)x_font {
    xb_Block block = ^UIButton* (UIFont *font) {
        self.titleLabel.font = font;
        return self;
    };
    return block;
}


- (void)set_state:(x_state)_state {
    objc_setAssociatedObject(self, &UIBUTTON_STATE_KEY, @(_state), OBJC_ASSOCIATION_ASSIGN);
}

- (x_state)_state {
    return [objc_getAssociatedObject(self, &UIBUTTON_STATE_KEY) integerValue];
}


@end
