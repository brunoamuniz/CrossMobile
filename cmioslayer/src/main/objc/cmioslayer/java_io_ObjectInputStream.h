/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 */

// SPDX-License-Identifier: LGPL-2.1-or-later

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"

#if defined(_WIN32) || defined(WIN32)
__declspec(dllexport)
#endif
@interface java_io_ObjectInputStream : java_lang_Object

- (double) readDouble__;

@end
