/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */


#import "xmlvm.h"
#import "java_lang_Boolean.h"
#import "java_lang_Character.h"
#import "java_lang_Byte.h"
#import "java_lang_Short.h"
#import "java_lang_Integer.h"
#import "java_lang_Float.h"
#import "java_lang_Double.h"
#import "java_lang_Long.h"
#import "java_lang_Class.h"
#import "java_util_List.h"
#import <objc/message.h>

id JAVA_NULL;

void xmlvm_init()
{
      JAVA_NULL = [NSNull null];
}

int isObjectInstanceOf(id obj, char* className)
{
    if (obj==JAVA_NULL)
        return FALSE;
    if ([obj isKindOfClass:objc_getClass(className)] || [obj conformsToProtocol:objc_getProtocol(className)])
        return TRUE;
    return FALSE;
}

void xmlvm_error(NSString* msg)
{
    NSLog(@"%@", msg);
    @throw [NSException exceptionWithName: @"XMLVM missing byte code instruction" reason:msg userInfo: nil];
}

NSString* jclass_to_string(java_lang_Class* classname)
{
    if (classname==JAVA_NULL||classname==nil)
        return nil;
    NSString* name = [classname getName__];
    NSString* objcname = [name stringByReplacingOccurrencesOfString:@"." withString:@"_"];
    [name release];
    return objcname;
}

Class jclass_to_class(java_lang_Class* classname)
{
    if (classname==JAVA_NULL||classname==nil)
        return nil;
    return classname->clazz;
}

NSArray<Class>* jclass_to_class_list(java_util_List* list){
    if (list==JAVA_NULL||list==nil)
        return nil;

    int size = [list size__];
    NSMutableArray* result = [[[NSMutableArray alloc] initWithCapacity:[list size__]] autorelease];
    for(int i = 0 ; i <size ; i++)
        [result addObject:((java_lang_Class*)[list get___int:i])->clazz];
    return result;
}

@implementation XMLVMArray

/* This private method creates a shallow copy of this array */
XMLVMElemPtr copyData(int type, int length, XMLVMElemPtr olddata)
{
    int sizeOfBaseType = [XMLVMArray sizeOfBaseTypeInBytes:type];
    int sizeOfArrayInBytes = sizeOfBaseType * length;
    XMLVMElemPtr array;
    array.data = malloc(sizeOfArrayInBytes);
    if (type == 0) {
        for (int i = 0; i < length; i++) {
            array.o[i] = [olddata.o[i] retain];
        }
    }
    else {
        memcpy(array.data, olddata.data, sizeOfArrayInBytes);
    }
    return array;
}

+ (XMLVMArray*) createSingleDimensionWithType:(int) type andSize:(int) size
{
    XMLVMArray *retval = [[XMLVMArray alloc] init];
    retval->type = type;
    retval->length = size;

    int sizeOfBaseType = [XMLVMArray sizeOfBaseTypeInBytes:type];
    retval->array.data = malloc(sizeOfBaseType * size);
    bzero(retval->array.data, sizeOfBaseType * size);

    if (type == 0) {
        for (int i = 0; i < size; i++) {
            retval->array.o[i] = JAVA_NULL;
        }
    }
    
    return retval;
}

+ (XMLVMArray*) createSingleDimensionWithType:(int) type size:(int) size andData:(void*) data
{
    XMLVMArray *retval = [[XMLVMArray alloc] init];
    retval->type = type;
    retval->length = size;
    retval->array = copyData(type, size, (XMLVMElemPtr)data);
    return retval;
}

+ (XMLVMArray*) createMultiDimensionsWithType:(int) type dimensions:(XMLVMElem*) dim count:(int)count
{
    int dimensions = dim->i;
    dim++;
    count--;
    if (count == 0) {
        return [XMLVMArray createSingleDimensionWithType:type andSize:dimensions];
    }
    XMLVMArray* slice = [XMLVMArray createSingleDimensionWithType:0 andSize:dimensions];
    for (int i = 0; i < dimensions; i++) {
        id o = [XMLVMArray createMultiDimensionsWithType:type dimensions:dim count:count];
        [slice replaceObjectAtIndex:i withObject:o];
        [o release];
    }
    return slice;
}

+ (void) fillArray:(XMLVMArray*) array withData:(void*) data
{
    int sizeOfBaseType = [XMLVMArray sizeOfBaseTypeInBytes:array->type];
    int n = sizeOfBaseType * array->length;
    memcpy(array->array.data, data, n);
}

+ (int) sizeOfBaseTypeInBytes:(int) type
{
    int sizeOfBaseType;
    
    // 'type' values are defined by vm:sizeOf in xmlvm2objc.xsl
    switch (type) {
    case 1: // boolean
    case 3: // byte
       sizeOfBaseType = sizeof(char);
       break;
    case 2: // char
       sizeOfBaseType = sizeof(unichar);
       break;
    case 4: // short
       sizeOfBaseType = sizeof(short);
       break;
    case 5: // int
       sizeOfBaseType = sizeof(int);
       break;
    case 6: // float
       sizeOfBaseType = sizeof(float);
       break;
    case 7: // double
       sizeOfBaseType = sizeof(double);
       break;
    case 8: // long
       sizeOfBaseType = sizeof(JAVA_LONG);
       break;
    case 100: // XMLVMElem
        sizeOfBaseType = sizeof(XMLVMElem);
        break;
    default: // object reference
       sizeOfBaseType = sizeof(id);
       break;
    }
    
    return sizeOfBaseType;
}

// call by reference for type found
- (int) sizeOfBoxedTypeInBytes:(int) index typeFound:(int *) type asMaxSize:(BOOL) maxsize
{
    if (self->type!=0)    // It is not an object, return the actual size
        return [XMLVMArray sizeOfBaseTypeInBytes:type];
    const char* className = class_getName([self->array.o[index] class]);
    int maxSize = sizeof(JAVA_LONG);
    if (strcmp(className, "java_lang_Boolean")==0) {
        if (type!=NULL)
            *type = 1;
        return maxsize?sizeof(id):sizeof(char);
    }
    else if (strcmp(className, "java_lang_Character")==0) {
        if (type!=NULL)
            *type = 2;
        return maxsize?sizeof(int):sizeof(unichar);
    }
    else if (strcmp(className, "java_lang_Byte")==0) {
        if (type!=NULL)
            *type = 3;
        return maxsize?maxSize:sizeof(char);
    }
    else if (strcmp(className, "java_lang_Short")==0) {
        if (type!=NULL)
            *type = 4;
        return maxsize?maxSize:sizeof(short);
    }
    else if (strcmp(className, "java_lang_Integer")==0) {
        if (type!=NULL)
            *type = 5;
        return maxsize?maxSize:sizeof(int);
    }
    else if (strcmp(className, "java_lang_Long")==0) {
        if (type!=NULL)
            *type = 6;
        return maxSize;
    }
    else if (strcmp(className, "java_lang_Float")==0) {
        if (type!=NULL)
            *type = 7;
        return maxsize?maxSize:sizeof(float);
    }
    else if (strcmp(className, "java_lang_Double")==0) {
        if (type!=NULL)
            *type = 8;
        return sizeof(double);
    }
    else {
        return sizeof(id);
    }
}

- (void) replaceObjectAtIndex:(int) idx withObject:(id) obj
{
    [self->array.o[idx] release];
    self->array.o[idx] = [obj retain];
}

- (int) count
{
    return length;
}

- (void) dealloc
{
    if (self->type == 0) {
        for (int i = 0; i < length; i++) {
            [self->array.o[i] release];
        }
    }
    free(self->array.data);
    [super dealloc];
}


- (XMLVMArray*) clone__
{
    XMLVMArray *retval = [[XMLVMArray alloc] init];
    retval->type = self->type;
    retval->length = self->length;
    retval->array = copyData(self->type, self->length, self->array);
    return retval;
}

- (void*) toMallocedVarArg
{
    int totalsize = 0;
    int offset[self->length];
    int type[self->length];
    for (int i = 0 ; i < self->length ; i++) {
        offset[i] = totalsize;
        totalsize += [self sizeOfBoxedTypeInBytes:i typeFound:(type+i) asMaxSize:YES];
    }
    void * vararg = malloc(totalsize);
    for (int i = 0 ; i < self->length ; i++) {
        int ctype = type[i];
        if (ctype==1) {
            *(NSString **)(vararg + offset[i]) = [self->array.o[i] booleanValue__] ? @"true" : @"false";
        } else if (ctype==2) {
            *(unichar*)(vararg + offset[i]) = (JAVA_LONG)[self->array.o[i] charValue__];
        } else if (ctype==3) {
            *(JAVA_LONG*)(vararg + offset[i]) = (JAVA_LONG)[self->array.o[i] byteValue__];
        } else if (ctype==4) {
            *(JAVA_LONG*)(vararg + offset[i]) = (JAVA_LONG)[self->array.o[i] shortValue__];
        } else if (ctype==5) {
            *(JAVA_LONG*)(vararg + offset[i]) = (JAVA_LONG)[self->array.o[i] intValue__];
        } else if (ctype==6) {
            *(JAVA_LONG*)(vararg + offset[i]) = (JAVA_LONG)[self->array.o[i] longValue__];
        } else if (ctype==7) {
            *(double*)(vararg + offset[i]) = (double)[self->array.o[i] floatValue__];
        } else if (ctype==8) {
            *(double*)(vararg + offset[i]) = [self->array.o[i] doubleValue__];
        } else {
            *(NSString **)(vararg + offset[i]) = [self->array.o[i] toString__];
        }
    }
    return vararg;
}

@end

typedef struct PosRangeStruct {
    NSRange range;
    NSString* format;
    NSUInteger pos;
} PosRange;

NSString* xmlvm_format(NSString* format, XMLVMArray* varargs)
{
    // Initialize regular expressions
    static NSRegularExpression *specRegex = nil;    // format specifiers
    static NSRegularExpression *posRegex = nil;     // positional specifiers
    if (specRegex==nil)
        specRegex = [NSRegularExpression regularExpressionWithPattern:@"%.*?[@%aAcCdDeEfFgGinoOpsSxXuU]" options:0 error:nil];
    if (posRegex==nil)
        posRegex = [NSRegularExpression regularExpressionWithPattern:@"^%[0-9]+\\$" options:0 error:nil];

    // find all specifiers
    NSUInteger totalSize = [varargs count];
    NSArray *matches = [specRegex matchesInString:format options:0 range:NSMakeRange(0, [format length])];
    NSInteger howmany = [matches count];
    if (howmany > 0) {
        // specifiers found
        PosRange ranges[howmany];
        for(NSInteger i = 0 ; i < howmany ; i++) {
            // current specifier data
            NSRange cRange = [[matches objectAtIndex:i] range];
            NSString* cFormat = [format substringWithRange:cRange];
            NSUInteger cPos = i;
            
            NSArray* positional = [posRegex matchesInString:cFormat options:0 range:NSMakeRange(0, [cFormat length])];
            if ([positional count]==1) {
                // this specifier has positional data, needs to be parsed
                NSRange nprange = [[positional objectAtIndex:0] range];
                nprange.length-=2;
                nprange.location++;
                // update position based on given value
                cPos = [[cFormat substringWithRange:nprange] intValue]-1;
                // update format to remove positional data
                cFormat = [NSString stringWithFormat:@"%%%@", [cFormat substringFromIndex:nprange.length+2]];
            }
            // sanitize position
            if (cPos>=totalSize)
                cPos = totalSize-1;
            if (cPos<0)
                cPos = 0;
            
            ranges[i].range = cRange;
            ranges[i].format = cFormat;
            ranges[i].pos = cPos;
        }
        for (NSInteger i = howmany-1 ; i >= 0 ; i--) {
            // get current parameter and format
            id item = varargs->array.o[i];
            NSString* cFormat = ranges[i].format;
            NSString* param;
            const char* className = class_getName([item class]);
            // Change param according to it's actual type
            if (strcmp(className, "java_lang_Boolean")==0) {
                param = [NSString stringWithFormat:cFormat, [item booleanValue__]];
            } else if (strcmp(className, "java_lang_Byte")==0 || strcmp(className, "java_lang_Short")==0 || strcmp(className, "java_lang_Integer")==0) {
                param = [NSString stringWithFormat:cFormat, [item intValue__]];
            } else if (strcmp(className, "java_lang_Long")==0) {
                param = [NSString stringWithFormat:cFormat, [item longValue__]];
            } else if (strcmp(className, "java_lang_Float")==0 || strcmp(className, "java_lang_Double")==0) {
                param = [NSString stringWithFormat:cFormat, [item doubleValue__]];
            } else if (strcmp(className, "java_lang_Character")==0) {
                param = [NSString stringWithFormat:cFormat, [item charValue__]];
            } else {
                param = [NSString stringWithFormat:cFormat, item];
            }
            
            // Collect param inside format string
            NSRange range = ranges[i].range;
            NSString* before = range.location <= 0 ? @"" : [format substringToIndex:range.location];
            NSString* after = (range.location + range.length) >= [format length] ? @"" : [format substringFromIndex:(range.location+range.length)];
            format = [NSString stringWithFormat:@"%@%@%@", before, param, after ];
        }
    }
    return format;
}

@implementation NSNull (cat_crossmobile_null)

-(void) throwNullPointerException {
    @throw [[NSException alloc] initWithName:@"Null pointer exception" reason:@"Null pointer" userInfo:nil];
}

- (void)doesNotRecognizeSelector:(SEL)aSelector {
    [self throwNullPointerException];
}

- (java_lang_Class*) getClass__ {
    [self throwNullPointerException];
    return JAVA_NULL;
}

- (int) equals___java_lang_Object: (java_lang_Object*) o {
    [self throwNullPointerException];
    return NO;
}

- (int) hashCode__ {
    [self throwNullPointerException];
    return 0;
}

- (java_lang_String*) toString__ {
    [self throwNullPointerException];
    return JAVA_NULL;
}

- (void) wait__ {
    [self throwNullPointerException];
}

- (void) wait___long: (JAVA_LONG)timeout {
    [self throwNullPointerException];
}

- (void) wait___long_int: (JAVA_LONG)timeout :(int) nanos {
    [self throwNullPointerException];
}

- (void) notify__ {
    [self throwNullPointerException];
}

- (void) notifyAll__  {
    [self throwNullPointerException];
}

@end
