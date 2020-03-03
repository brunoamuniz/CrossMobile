/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 */

// SPDX-License-Identifier: LGPL-2.1-or-later


#import "java_lang_IllegalMonitorStateException.h"

// java.lang.IllegalMonitorStateException
//----------------------------------------------------------------------------
@implementation java_lang_IllegalMonitorStateException

- (id) init
{
    return [self initWithName: @"java_lang_IllegalMonitorStateException" reason: nil userInfo: nil];
}

- (instancetype) __init_java_lang_IllegalMonitorStateException__
{
    return [self init];
}

- (instancetype) __init_java_lang_IllegalMonitorStateException___java_lang_String: (java_lang_String*) msg
{
    return [self init];
}

@end
