//
//  UILabel+X.h
//  TrashCodes
//
//  Created by liuxu on 2019/3/13.
//  Copyright © 2019 liuxu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef UILabel* (^xl_Block)(id);

@interface UILabel (X)

@property (nonatomic, copy, readonly) xl_Block x_text;
@property (nonatomic, copy, readonly) xl_Block x_font;
@property (nonatomic, copy, readonly) xl_Block x_textColor;
@property (nonatomic, copy, readonly) xl_Block x_align;


@property (nonatomic, copy, readonly) xl_Block x_numOfLines;
@property (nonatomic, copy, readonly) xl_Block x_shadowOffset;
@property (nonatomic, copy, readonly) xl_Block x_lineBreakMode;
@property (nonatomic, copy, readonly) xl_Block x_attributedText;

@end

NS_ASSUME_NONNULL_END
