//
//  UITextField+X.m
//  TrashCodes
//
//  Created by liuxu on 2019/3/13.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import "UITextField+X.h"
#import "X_Defines.h"

@interface UITextField () <UITextFieldDelegate>

@property (nonatomic, copy)  BOOL(^_shouldBeginEditingBlock)(UITextField *);
@property (nonatomic, copy)  void(^_didBeginEditingBlock)(UITextField *);
@property (nonatomic, copy)  BOOL(^_shouldEndEditingBlock)(UITextField *);
@property (nonatomic, copy)  void(^_didEndEditingBlock)(UITextField *);
@property (nonatomic, copy)  BOOL(^_shouldChangeCharactersBlock)(UITextField *, NSRange range, NSString *);
@property (nonatomic, copy)  BOOL(^_shouldClearBlock)(UITextField *);
@property (nonatomic, copy)  BOOL(^_shouldReturnBlock)(UITextField *);
@end

@implementation UITextField (X)

static void *UITEXTFIELD_SHOULD_BEGIN_EDITING_KEY = &UITEXTFIELD_SHOULD_BEGIN_EDITING_KEY;
static void *UITEXTFIELD_DID_BEGIN_EDITING_KEY = &UITEXTFIELD_DID_BEGIN_EDITING_KEY;
static void *UITEXTFIELD_SHOULD_END_EDITING_KEY = &UITEXTFIELD_SHOULD_END_EDITING_KEY;
static void *UITEXTFIELD_DID_END_EDITING_KEY = &UITEXTFIELD_DID_END_EDITING_KEY;
static void *UITEXTFIELD_SHOULD_CHANGE_CHARACTERS_KEY = &UITEXTFIELD_SHOULD_CHANGE_CHARACTERS_KEY;
static void *UITEXTFIELD_SHOULD_CLEAR_KEY = &UITEXTFIELD_SHOULD_CLEAR_KEY;
static void *UITEXTFIELD_SHOULD_RETURN_KEY = &UITEXTFIELD_SHOULD_RETURN_KEY;

- (xt_Block)x_text {
    xt_Block block = ^UITextField* (NSString *text) {
        self.text = text;
        return self;
    };
    return block;
}

- (xt_Block)x_attributedText {
    xt_Block block = ^UITextField* (NSAttributedString *attr) {
        self.attributedText = attr;
        return self;
    };
    return block;
}

- (xt_Block)x_textColor {
    xt_Block block = ^UITextField* (UIColor *color) {
        self.textColor = color;
        return self;
    };
    return block;
}

- (xt_Block)x_font {
    xt_Block block = ^UITextField* (UIFont *font) {
        self.font = font;
        return self;
    };
    return block;
}

- (xt_Block)x_align {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.textAlignment = num.integerValue;
        return self;
    };
    return block;
}

- (xt_Block)x_borderStyle {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.borderStyle = num.integerValue;
        return self;
    };
    return block;
}

- (xt_Block)x_placeholder {
    xt_Block block = ^UITextField* (NSString *placeholder) {
        self.placeholder = placeholder;
        return self;
    };
    return block;
}

- (xt_Block)x_attributedPlaceholder {
    xt_Block block = ^UITextField* (NSAttributedString *attrPlaceholder) {
        self.attributedPlaceholder = attrPlaceholder;
        return self;
    };
    return block;
}

- (xt_Block)x_clearOnBeginEditing {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.clearsOnBeginEditing = num.boolValue;
        return self;
    };
    return block;
}

- (xt_Block)x_adjustFontSizeToFitWidth {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.adjustsFontSizeToFitWidth = num.boolValue;
        return self;
    };
    return block;
}

- (xt_Block)x_miniumFontSize {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.minimumFontSize = num.floatValue;
        return self;
    };
    return block;
}

- (xt_Block)x_delegate {
    xt_Block block = ^UITextField* (id<UITextFieldDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
    return block;
}

- (xt_Block)x_background {
    xt_Block block = ^UITextField* (UIImage *image) {
        self.background = image;
        return self;
    };
    return block;
}

- (xt_Block)x_disableBackground {
    xt_Block block = ^UITextField* (UIImage *image) {
        self.disabledBackground = image;
        return self;
    };
    return block;
}

- (xt_Block)x_allowEditingTextAttributes {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.allowsEditingTextAttributes = num.boolValue;
        return self;
    };
    return block;
}

- (xt_Block)x_typingAttributes {
    xt_Block block = ^UITextField* (NSDictionary *typingAttr) {
        self.typingAttributes = typingAttr;
        return self;
    };
    return block;
}

- (xt_Block)x_clearButtonMode {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.clearButtonMode = num.integerValue;
        return self;
    };
    return block;
}

- (xt_Block)x_leftView {
    xt_Block block = ^UITextField* (UIView *view) {
        self.leftView = view;
        return self;
    };
    return block;
}

- (xt_Block)x_leftViewMode {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.leftViewMode = num.integerValue;
        return self;
    };
    return block;
}

- (xt_Block)x_rightView {
    xt_Block block = ^UITextField* (UIView *view) {
        self.rightView = view;
        return self;
    };
    return block;
}

- (xt_Block)x_rightViewMode {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.rightViewMode = num.integerValue;
        return self;
    };
    return block;
}

- (xt_Block)x_inputView {
    xt_Block block = ^UITextField* (UIView *view) {
        self.inputView = view;
        return self;
    };
    return block;
}

- (xt_Block)x_inputAccessoryView {
    xt_Block block = ^UITextField* (UIView *view) {
        self.inputAccessoryView = view;
        return self;
    };
    return block;
}

- (xt_Block)x_clearsOnInsertion {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.clearsOnInsertion = num.boolValue;
        return self;
    };
    return block;
}

- (xt_Block)x_keyboardType {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.keyboardType = num.integerValue;
        return self;
    };
    return block;
}

- (xt_Block)x_returnKeyType {
    xt_Block block = ^UITextField* (NSNumber *num) {
        self.returnKeyType = num.integerValue;
        return self;
    };
    return block;
}


#pragma mark - delegate

- (UITextField * (^)(BOOL (^)(UITextField *)))x_shouldBeginEditing {
    x_weak(self);
    UITextField* (^block)(BOOL (^)(UITextField *)) = ^UITextField* (BOOL (^delegateBlock)(UITextField *)){
        x_strong(self);
        self.delegate = self;
        self._shouldBeginEditingBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITextField * _Nonnull (^)(void (^ _Nonnull)(UITextField * _Nonnull)))x_didBeginEditing {
    x_weak(self);
    UITextField* (^block)(void (^)(UITextField *)) = ^UITextField* (void (^delegateBlock)(UITextField *)){
        x_strong(self);
        self.delegate = self;
        self._didBeginEditingBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITextField * _Nonnull (^)(BOOL (^ _Nonnull)(UITextField * _Nonnull)))x_shouldEndEditing {
    x_weak(self);
    UITextField* (^block)(BOOL (^)(UITextField *)) = ^UITextField* (BOOL (^delegateBlock)(UITextField *)){
        x_strong(self);
        self.delegate = self;
        self._shouldEndEditingBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITextField * _Nonnull (^)(void (^ _Nonnull)(UITextField * _Nonnull)))x_didEndEditing {
    x_weak(self);
    UITextField* (^block)(void (^)(UITextField *)) = ^UITextField* (void (^delegateBlock)(UITextField *)){
        x_strong(self);
        self.delegate = self;
        self._didEndEditingBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITextField * _Nonnull (^)(BOOL (^ _Nonnull)(UITextField * _Nonnull, NSRange, NSString * _Nonnull)))x_shouldChangeCharacters {
    x_weak(self);
    UITextField* (^block)(BOOL (^)(UITextField *, NSRange, NSString *)) = ^UITextField* (BOOL (^delegateBlock)(UITextField *, NSRange, NSString*)){
        x_strong(self);
        self.delegate = self;
        self._shouldChangeCharactersBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITextField * _Nonnull (^)(BOOL (^ _Nonnull)(UITextField * _Nonnull)))x_shouldClear {
    x_weak(self);
    UITextField* (^block)(BOOL (^)(UITextField *)) = ^UITextField* (BOOL (^delegateBlock)(UITextField *)){
        x_strong(self);
        self.delegate = self;
        self._shouldClearBlock = delegateBlock;
        return self;
    };
    return block;
}

- (UITextField * _Nonnull (^)(BOOL (^ _Nonnull)(UITextField * _Nonnull)))x_shouldReturn {
    x_weak(self);
    UITextField* (^block)(BOOL (^)(UITextField *)) = ^UITextField* (BOOL (^delegateBlock)(UITextField *)){
        x_strong(self);
        self.delegate = self;
        self._shouldReturnBlock = delegateBlock;
        return self;
    };
    return block;
}
#pragma mark - getter & setter

- (BOOL (^)(UITextField *))_shouldBeginEditingBlock {
    return objc_getAssociatedObject(self, &UITEXTFIELD_SHOULD_BEGIN_EDITING_KEY);
}

- (void)set_shouldBeginEditingBlock:(BOOL (^)(UITextField *))_shouldBeginEditingBlock {
    objc_setAssociatedObject(self, &UITEXTFIELD_SHOULD_BEGIN_EDITING_KEY, _shouldBeginEditingBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITextField *))_didBeginEditingBlock {
    return objc_getAssociatedObject(self, &UITEXTFIELD_DID_BEGIN_EDITING_KEY);
}

- (void)set_didBeginEditingBlock:(void (^)(UITextField *))_didBeginEditingBlock {
    objc_setAssociatedObject(self, &UITEXTFIELD_DID_BEGIN_EDITING_KEY, _didBeginEditingBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITextField *))_shouldEndEditingBlock {
    return objc_getAssociatedObject(self, &UITEXTFIELD_SHOULD_END_EDITING_KEY);
}

- (void)set_shouldEndEditingBlock:(BOOL (^)(UITextField *))_shouldEndEditingBlock {
    objc_setAssociatedObject(self, &UITEXTFIELD_SHOULD_END_EDITING_KEY, _shouldEndEditingBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^)(UITextField *))_didEndEditingBlock {
    return objc_getAssociatedObject(self, &UITEXTFIELD_DID_END_EDITING_KEY);
}

- (void)set_didEndEditingBlock:(void (^)(UITextField *))_didEndEditingBlock {
    objc_setAssociatedObject(self, &UITEXTFIELD_DID_END_EDITING_KEY, _didEndEditingBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITextField *, NSRange, NSString *))_shouldChangeCharactersBlock {
    return objc_getAssociatedObject(self, &UITEXTFIELD_SHOULD_CHANGE_CHARACTERS_KEY);
}

- (void)set_shouldChangeCharactersBlock:(BOOL (^)(UITextField *, NSRange, NSString *))_shouldChangeCharactersBlock {
    objc_setAssociatedObject(self, &UITEXTFIELD_SHOULD_CHANGE_CHARACTERS_KEY, _shouldChangeCharactersBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITextField *))_shouldClearBlock {
    return objc_getAssociatedObject(self, &UITEXTFIELD_SHOULD_CLEAR_KEY);
}

- (void)set_shouldClearBlock:(BOOL (^)(UITextField *))_shouldClearBlock {
    objc_setAssociatedObject(self, &UITEXTFIELD_SHOULD_CLEAR_KEY, _shouldClearBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BOOL (^)(UITextField *))_shouldReturnBlock {
    return objc_getAssociatedObject(self, &UITEXTFIELD_SHOULD_RETURN_KEY);
}

- (void)set_shouldReturnBlock:(BOOL (^)(UITextField *))_shouldReturnBlock {
    objc_setAssociatedObject(self, &UITEXTFIELD_SHOULD_RETURN_KEY, _shouldReturnBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if (self._shouldBeginEditingBlock) {
        return self._shouldBeginEditingBlock(textField);
    }
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    if (self._didBeginEditingBlock) {
        self._didBeginEditingBlock(textField);
    }
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    if (self._shouldEndEditingBlock) {
        return self._shouldEndEditingBlock(textField);
    }
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (self._didEndEditingBlock) {
        self._didEndEditingBlock(textField);
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if (self._shouldChangeCharactersBlock) {
        return self._shouldChangeCharactersBlock(textField,range,string);
    }
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    if (self._shouldClearBlock) {
        return self._shouldClearBlock(textField);
    }
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (self._shouldReturnBlock) {
        return self._shouldReturnBlock(textField);
    }
    return YES;
}

@end
