//
//  X_Defines.h
//  TrashCodes
//
//  Created by liuxu on 2019/3/14.
//  Copyright © 2019 liuxu. All rights reserved.
//

#ifndef X_Defines_h
#define X_Defines_h

#import <objc/runtime.h>

#define x_weak(object) __weak __typeof__(object) weak##_##object = object;
#define x_strong(object) __typeof__(object) object = weak##_##object;

#endif /* X_Defines_h */
