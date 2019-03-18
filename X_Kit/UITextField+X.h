//
//  UITextField+X.h
//  TrashCodes
//
//  Created by liuxu on 2019/3/13.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef UITextField* (^xt_Block)(id);

@interface UITextField (X)

@property (nonatomic, copy, readonly) xt_Block x_text;
@property (nonatomic, copy, readonly) xt_Block x_attributedText;
@property (nonatomic, copy, readonly) xt_Block x_textColor;
@property (nonatomic, copy, readonly) xt_Block x_font;
@property (nonatomic, copy, readonly) xt_Block x_align;
@property (nonatomic, copy, readonly) xt_Block x_borderStyle;
@property (nonatomic, copy, readonly) xt_Block x_placeholder;
@property (nonatomic, copy, readonly) xt_Block x_attributedPlaceholder;
@property (nonatomic, copy, readonly) xt_Block x_clearOnBeginEditing;
@property (nonatomic, copy, readonly) xt_Block x_adjustFontSizeToFitWidth;
@property (nonatomic, copy, readonly) xt_Block x_miniumFontSize;
@property (nonatomic, copy, readonly) xt_Block x_delegate;
@property (nonatomic, copy, readonly) xt_Block x_background;
@property (nonatomic, copy, readonly) xt_Block x_disableBackground;
@property (nonatomic, copy, readonly) xt_Block x_allowEditingTextAttributes;
@property (nonatomic, copy, readonly) xt_Block x_typingAttributes;
@property (nonatomic, copy, readonly) xt_Block x_clearButtonMode;
@property (nonatomic, copy, readonly) xt_Block x_leftView;
@property (nonatomic, copy, readonly) xt_Block x_leftViewMode;
@property (nonatomic, copy, readonly) xt_Block x_rightView;
@property (nonatomic, copy, readonly) xt_Block x_rightViewMode;
@property (nonatomic, copy, readonly) xt_Block x_inputView;
@property (nonatomic, copy, readonly) xt_Block x_inputAccessoryView;
@property (nonatomic, copy, readonly) xt_Block x_clearsOnInsertion;


// UITextInputTraits
@property (nonatomic, copy, readonly) xt_Block x_keyboardType;
@property (nonatomic, copy, readonly) xt_Block x_returnKeyType;


// delegate
@property (nonatomic, copy, readonly) UITextField* (^x_shouldBeginEditing)(BOOL (^)(UITextField *field));
@property (nonatomic, copy, readonly) UITextField* (^x_didBeginEditing)(void (^)(UITextField *field));
@property (nonatomic, copy, readonly) UITextField* (^x_shouldEndEditing)(BOOL (^)(UITextField *field));
@property (nonatomic, copy, readonly) UITextField* (^x_didEndEditing)(void (^)(UITextField *field));
@property (nonatomic, copy, readonly) UITextField* (^x_shouldChangeCharacters)(BOOL (^)(UITextField *field, NSRange range, NSString *replacementString));
@property (nonatomic, copy, readonly) UITextField* (^x_shouldClear)(BOOL (^)(UITextField *field));
@property (nonatomic, copy, readonly) UITextField* (^x_shouldReturn)(BOOL (^)(UITextField *field));



@end

NS_ASSUME_NONNULL_END
