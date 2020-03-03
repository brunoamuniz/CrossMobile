/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 */

// SPDX-License-Identifier: LGPL-2.1-or-later

#import "java_net_HttpURLConnection.h"


@implementation java_net_HttpURLConnection

- (void) setRequestMethod___java_lang_String: (java_lang_String*) method
{
	[self->request setHTTPMethod:method];
}

@end
