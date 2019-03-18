//
//  UILabel+X.m
//  TrashCodes
//
//  Created by liuxu on 2019/3/13.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import "UILabel+X.h"
#import "XKit.h"
@implementation UILabel (X)

- (xl_Block)x_text
{
    xl_Block block = ^UILabel* (NSString *text) {
        self.text = text;
        return self;
    };
    return block;
}

- (xl_Block)x_font {
    xl_Block block = ^UILabel* (UIFont *font) {
        self.font = font;
        return self;
    };
    return block;
}

- (xl_Block)x_textColor {
    xl_Block block = ^UILabel* (UIColor *color) {
        self.textColor = color;
        return self;
    };
    return block;
}

- (xl_Block)x_align {
    xl_Block block = ^UILabel* (NSNumber *align) {
        self.textAlignment = align.integerValue;
        return self;
    };
    return block;
}

- (xl_Block)x_numOfLines {
    xl_Block block = ^UILabel* (NSNumber *num) {
        self.numberOfLines = num.integerValue;
        return self;
    };
    return block;
}

- (xl_Block)x_shadowOffset {
    xl_Block block = ^UILabel *(NSValue *value) {
        self.shadowOffset = value.CGSizeValue;
        return self;
    };
    return block;
}

- (xl_Block)x_lineBreakMode {
    xl_Block block = ^UILabel *(NSNumber *mode) {
        self.lineBreakMode = mode.integerValue;
        return self;
    };
    return block;
}

- (xl_Block)x_attributedText {
    xl_Block block = ^UILabel *(NSAttributedString *attr) {
        self.attributedText = attr;
        return self;
    };
    return block;
}
@end
