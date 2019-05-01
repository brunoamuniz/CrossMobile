// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.foundation.NSURLSessionTask implementation

#import "crossmobile_ios_foundation_NSError.h"
#import "crossmobile_ios_foundation_NSURLRequest.h"
#import "crossmobile_ios_foundation_NSURLResponse.h"
#import "crossmobile_ios_foundation_NSURLSessionTask.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"

@implementation crossmobile_ios_foundation_NSURLSessionTask$Ext

// (NSURLSessionTask) @property(readonly) int64_t countOfBytesExpectedToReceive;
- (JAVA_LONG) countOfBytesExpectedToReceive__
{
    return [super countOfBytesExpectedToReceive];
}

// (NSURLSessionTask) @property(readonly) int64_t countOfBytesExpectedToSend;
- (JAVA_LONG) countOfBytesExpectedToSend__
{
    return [super countOfBytesExpectedToSend];
}

// (NSURLSessionTask) @property(readonly) int64_t countOfBytesReceived;
- (JAVA_LONG) countOfBytesReceived__
{
    return [super countOfBytesReceived];
}

// (NSURLSessionTask) @property(readonly) int64_t countOfBytesSent;
- (JAVA_LONG) countOfBytesSent__
{
    return [super countOfBytesSent];
}

// (NSURLSessionTask) @property(readonly, copy) NSURLRequest *currentRequest;
- (NSURLRequest*) currentRequest__
{
    NSURLRequest* re$ult = [super currentRequest];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSessionTask) @property(readonly, copy) NSError *error;
- (NSError*) error__
{
    NSError* re$ult = [super error];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSessionTask) @property(readonly, copy) NSURLRequest *originalRequest;
- (NSURLRequest*) originalRequest__
{
    NSURLRequest* re$ult = [super originalRequest];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSessionTask) @property float priority;
- (void) setPriority___float:(float) priority 
{
    [super setPriority:priority];
}

// (NSURLSessionTask) @property float priority;
- (float) priority__
{
    return [super priority];
}

// (NSURLSessionTask) @property(readonly, copy) NSURLResponse *response;
- (NSURLResponse*) response__
{
    NSURLResponse* re$ult = [super response];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSessionTask) @property(readonly) NSURLSessionTaskState state;
- (int) state__
{
    return [super state];
}

// (NSURLSessionTask) @property(copy) NSString *taskDescription;
- (void) setTaskDescription___java_lang_String:(NSString*) taskDescription 
{
    [super setTaskDescription:(taskDescription == JAVA_NULL ? nil : taskDescription)];
}

// (NSURLSessionTask) @property(copy) NSString *taskDescription;
- (NSString*) taskDescription__
{
    NSString* re$ult = [super taskDescription];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSessionTask) @property(readonly) NSUInteger taskIdentifier;
- (int) taskIdentifier__
{
    return [super taskIdentifier];
}

// (NSURLSessionTask) - (void)cancel;
- (void) cancel__
{
    [super cancel];
}

// (NSURLSessionTask) - (void)resume;
- (void) resume__
{
    [super resume];
}

// (NSObject) - (void)setValue:(id)value forKey:(NSString *)key;
- (void) setValue___java_lang_Object_java_lang_String:(id) value :(NSString*) key 
{
    [super setValue:(value == JAVA_NULL ? nil : value) forKey:(key == JAVA_NULL ? nil : key)];
}

// (NSURLSessionTask) - (void)suspend;
- (void) suspend__
{
    [super suspend];
}

// (NSObject) - (id)valueForKey:(NSString *)key;
- (id) valueForKey___java_lang_String:(NSString*) key 
{
    id re$ult = [super valueForKey:(key == JAVA_NULL ? nil : key)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

@end

@implementation NSURLSessionTask (cm_crossmobile_ios_foundation_NSURLSessionTask)

// direct binding of: -(instancetype) init;
- (instancetype) __init_crossmobile_ios_foundation_NSURLSessionTask__
{
    return [self init];
}

// direct binding of: @property(readonly) int64_t countOfBytesExpectedToReceive;
- (JAVA_LONG) countOfBytesExpectedToReceive__
{
    return [self countOfBytesExpectedToReceive];
}

// direct binding of: @property(readonly) int64_t countOfBytesExpectedToSend;
- (JAVA_LONG) countOfBytesExpectedToSend__
{
    return [self countOfBytesExpectedToSend];
}

// direct binding of: @property(readonly) int64_t countOfBytesReceived;
- (JAVA_LONG) countOfBytesReceived__
{
    return [self countOfBytesReceived];
}

// direct binding of: @property(readonly) int64_t countOfBytesSent;
- (JAVA_LONG) countOfBytesSent__
{
    return [self countOfBytesSent];
}

// direct binding of: @property(readonly, copy) NSURLRequest *currentRequest;
- (NSURLRequest*) currentRequest__
{
    NSURLRequest* re$ult = [self currentRequest];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(readonly, copy) NSError *error;
- (NSError*) error__
{
    NSError* re$ult = [self error];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(readonly, copy) NSURLRequest *originalRequest;
- (NSURLRequest*) originalRequest__
{
    NSURLRequest* re$ult = [self originalRequest];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property float priority;
- (void) setPriority___float:(float) priority 
{
    [self setPriority:priority];
}

// direct binding of: @property float priority;
- (float) priority__
{
    return [self priority];
}

// direct binding of: @property(readonly, copy) NSURLResponse *response;
- (NSURLResponse*) response__
{
    NSURLResponse* re$ult = [self response];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(readonly) NSURLSessionTaskState state;
- (int) state__
{
    return [self state];
}

// direct binding of: @property(copy) NSString *taskDescription;
- (void) setTaskDescription___java_lang_String:(NSString*) taskDescription 
{
    [self setTaskDescription:(taskDescription == JAVA_NULL ? nil : taskDescription)];
}

// direct binding of: @property(copy) NSString *taskDescription;
- (NSString*) taskDescription__
{
    NSString* re$ult = [self taskDescription];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(readonly) NSUInteger taskIdentifier;
- (int) taskIdentifier__
{
    return [self taskIdentifier];
}

// direct binding of: - (void)cancel;
- (void) cancel__
{
    [self cancel];
}

// direct binding of: - (void)resume;
- (void) resume__
{
    [self resume];
}

// direct binding of: - (void)suspend;
- (void) suspend__
{
    [self suspend];
}

@end
