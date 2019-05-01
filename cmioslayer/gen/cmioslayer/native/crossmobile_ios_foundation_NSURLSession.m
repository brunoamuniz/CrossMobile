// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.foundation.NSURLSession implementation

#import "crossmobile_ios_foundation_NSData.h"
#import "crossmobile_ios_foundation_NSError.h"
#import "crossmobile_ios_foundation_NSOperationQueue.h"
#import "crossmobile_ios_foundation_NSURL.h"
#import "crossmobile_ios_foundation_NSURLRequest.h"
#import "crossmobile_ios_foundation_NSURLResponse.h"
#import "crossmobile_ios_foundation_NSURLSession.h"
#import "crossmobile_ios_foundation_NSURLSessionConfiguration.h"
#import "crossmobile_ios_foundation_NSURLSessionDataTask.h"
#import "crossmobile_ios_foundation_NSURLSessionDelegate.h"
#import "crossmobile_ios_foundation_NSURLSessionDownloadTask.h"
#import "crossmobile_ios_foundation_NSURLSessionStreamTask.h"
#import "crossmobile_ios_foundation_NSURLSessionUploadTask.h"
#import "java_lang_Object.h"
#import "java_lang_Runnable.h"
#import "java_lang_String.h"
#import "java_util_List.h"
#import "org_robovm_objc_block_VoidBlock1.h"
#import "org_robovm_objc_block_VoidBlock3.h"

@implementation crossmobile_ios_foundation_NSURLSession$Ext

// (NSURLSession) @property(readonly, copy) NSURLSessionConfiguration *configuration;
- (NSURLSessionConfiguration*) configuration__
{
    NSURLSessionConfiguration* re$ult = [super configuration];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) @property(readonly, retain) id<NSURLSessionDelegate> delegate;
- (id<NSURLSessionDelegate>) delegate__
{
    id<NSURLSessionDelegate> re$ult = [super delegate];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) @property(readonly, retain) NSOperationQueue *delegateQueue;
- (NSOperationQueue*) delegateQueue__
{
    NSOperationQueue* re$ult = [super delegateQueue];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) @property(copy) NSString *sessionDescription;
- (void) setSessionDescription___java_lang_String:(NSString*) sessionDescription 
{
    [super setSessionDescription:(sessionDescription == JAVA_NULL ? nil : sessionDescription)];
}

// (NSURLSession) @property(copy) NSString *sessionDescription;
- (NSString*) sessionDescription__
{
    NSString* re$ult = [super sessionDescription];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) @property(class, readonly, strong) NSURLSession *sharedSession;
- (NSURLSession*) sharedSession__
{
    NSURLSession* re$ult = [super sharedSession];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request;
- (NSURLSessionDataTask*) dataTaskWithRequest___crossmobile_ios_foundation_NSURLRequest:(NSURLRequest*) request 
{
    NSURLSessionDataTask* re$ult = [super dataTaskWithRequest:(request == JAVA_NULL ? nil : request)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (NSURLSessionDataTask *)dataTaskWithURL:(NSURL *)url;
- (NSURLSessionDataTask*) dataTaskWithURL___crossmobile_ios_foundation_NSURL:(NSURL*) url 
{
    NSURLSessionDataTask* re$ult = [super dataTaskWithURL:(url == JAVA_NULL ? nil : url)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (NSURLSessionDownloadTask *)downloadTaskWithRequest:(NSURLRequest *)request;
- (NSURLSessionDownloadTask*) downloadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest:(NSURLRequest*) request 
{
    NSURLSessionDownloadTask* re$ult = [super downloadTaskWithRequest:(request == JAVA_NULL ? nil : request)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (NSURLSessionDownloadTask *)downloadTaskWithResumeData:(NSData *)resumeData;
- (NSURLSessionDownloadTask*) downloadTaskWithResumeData___crossmobile_ios_foundation_NSData:(NSData*) resumeData 
{
    NSURLSessionDownloadTask* re$ult = [super downloadTaskWithResumeData:(resumeData == JAVA_NULL ? nil : resumeData)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (NSURLSessionDownloadTask *)downloadTaskWithURL:(NSURL *)url;
- (NSURLSessionDownloadTask*) downloadTaskWithURL___crossmobile_ios_foundation_NSURL:(NSURL*) url 
{
    NSURLSessionDownloadTask* re$ult = [super downloadTaskWithURL:(url == JAVA_NULL ? nil : url)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (void)finishTasksAndInvalidate;
- (void) finishTasksAndInvalidate__
{
    [super finishTasksAndInvalidate];
}

// (NSURLSession) - (void)invalidateAndCancel;
- (void) invalidateAndCancel__
{
    [super invalidateAndCancel];
}

// (NSObject) - (void)setValue:(id)value forKey:(NSString *)key;
- (void) setValue___java_lang_Object_java_lang_String:(id) value :(NSString*) key 
{
    [super setValue:(value == JAVA_NULL ? nil : value) forKey:(key == JAVA_NULL ? nil : key)];
}

// (NSURLSession) - (NSURLSessionStreamTask *)streamTaskWithHostName:(NSString *)hostname port:(NSInteger)port;
- (NSURLSessionStreamTask*) streamTaskWithHostName___java_lang_String_int:(NSString*) hostname :(int) port 
{
    NSURLSessionStreamTask* re$ult = [super streamTaskWithHostName:(hostname == JAVA_NULL ? nil : hostname) port:port];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromData:(NSData *)bodyData;
- (NSURLSessionUploadTask*) uploadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest_crossmobile_ios_foundation_NSData:(NSURLRequest*) request :(NSData*) bodyData 
{
    NSURLSessionUploadTask* re$ult = [super uploadTaskWithRequest:(request == JAVA_NULL ? nil : request) fromData:(bodyData == JAVA_NULL ? nil : bodyData)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromFile:(NSURL *)fileURL;
- (NSURLSessionUploadTask*) uploadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest_crossmobile_ios_foundation_NSURL:(NSURLRequest*) request :(NSURL*) fileURL 
{
    NSURLSessionUploadTask* re$ult = [super uploadTaskWithRequest:(request == JAVA_NULL ? nil : request) fromFile:(fileURL == JAVA_NULL ? nil : fileURL)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSURLSession) - (NSURLSessionUploadTask *)uploadTaskWithStreamedRequest:(NSURLRequest *)request;
- (NSURLSessionUploadTask*) uploadTaskWithStreamedRequest___crossmobile_ios_foundation_NSURLRequest:(NSURLRequest*) request 
{
    NSURLSessionUploadTask* re$ult = [super uploadTaskWithStreamedRequest:(request == JAVA_NULL ? nil : request)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSObject) - (id)valueForKey:(NSString *)key;
- (id) valueForKey___java_lang_String:(NSString*) key 
{
    id re$ult = [super valueForKey:(key == JAVA_NULL ? nil : key)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

@end

@implementation NSURLSession (cm_crossmobile_ios_foundation_NSURLSession)

// direct binding of: + (NSURLSession *)sessionWithConfiguration:(NSURLSessionConfiguration *)configuration;
+ (NSURLSession*) sessionWithConfiguration___crossmobile_ios_foundation_NSURLSessionConfiguration:(NSURLSessionConfiguration*) configuration 
{
    NSURLSession* re$ult = [NSURLSession sessionWithConfiguration:(configuration == JAVA_NULL ? nil : configuration)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: + (NSURLSession *)sessionWithConfiguration:(NSURLSessionConfiguration *)configuration delegate:(id<NSURLSessionDelegate>)delegate delegateQueue:(NSOperationQueue *)queue;
+ (NSURLSession*) sessionWithConfiguration___crossmobile_ios_foundation_NSURLSessionConfiguration_crossmobile_ios_foundation_NSURLSessionDelegate_crossmobile_ios_foundation_NSOperationQueue:(NSURLSessionConfiguration*) configuration :(id<NSURLSessionDelegate>) delegate :(NSOperationQueue*) queue 
{
    NSURLSession* re$ult = [NSURLSession sessionWithConfiguration:(configuration == JAVA_NULL ? nil : configuration) delegate:(delegate == JAVA_NULL ? nil : delegate) delegateQueue:(queue == JAVA_NULL ? nil : queue)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(readonly, copy) NSURLSessionConfiguration *configuration;
- (NSURLSessionConfiguration*) configuration__
{
    NSURLSessionConfiguration* re$ult = [self configuration];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(readonly, retain) id<NSURLSessionDelegate> delegate;
- (id<NSURLSessionDelegate>) delegate__
{
    id<NSURLSessionDelegate> re$ult = [self delegate];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(readonly, retain) NSOperationQueue *delegateQueue;
- (NSOperationQueue*) delegateQueue__
{
    NSOperationQueue* re$ult = [self delegateQueue];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(copy) NSString *sessionDescription;
- (void) setSessionDescription___java_lang_String:(NSString*) sessionDescription 
{
    [self setSessionDescription:(sessionDescription == JAVA_NULL ? nil : sessionDescription)];
}

// direct binding of: @property(copy) NSString *sessionDescription;
- (NSString*) sessionDescription__
{
    NSString* re$ult = [self sessionDescription];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(class, readonly, strong) NSURLSession *sharedSession;
- (NSURLSession*) sharedSession__
{
    NSURLSession* re$ult = [self sharedSession];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request;
- (NSURLSessionDataTask*) dataTaskWithRequest___crossmobile_ios_foundation_NSURLRequest:(NSURLRequest*) request 
{
    NSURLSessionDataTask* re$ult = [self dataTaskWithRequest:(request == JAVA_NULL ? nil : request)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler;
- (NSURLSessionDataTask*) dataTaskWithRequest___crossmobile_ios_foundation_NSURLRequest_org_robovm_objc_block_VoidBlock3:(NSURLRequest*) request :(id<org_robovm_objc_block_VoidBlock3>) completionHandler 
{
    NSURLSessionDataTask* re$ult = [self dataTaskWithRequest:(request == JAVA_NULL ? nil : request) completionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSData* data, NSURLResponse* response, NSError* error) {
        [completionHandler invoke___java_lang_Object_java_lang_Object_java_lang_Object:(data ? data : JAVA_NULL) :(response ? response : JAVA_NULL) :(error ? error : JAVA_NULL)];
    })];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDataTask *)dataTaskWithURL:(NSURL *)url;
- (NSURLSessionDataTask*) dataTaskWithURL___crossmobile_ios_foundation_NSURL:(NSURL*) url 
{
    NSURLSessionDataTask* re$ult = [self dataTaskWithURL:(url == JAVA_NULL ? nil : url)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDataTask *)dataTaskWithURL:(NSURL *)url completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler;
- (NSURLSessionDataTask*) dataTaskWithURL___crossmobile_ios_foundation_NSURL_org_robovm_objc_block_VoidBlock3:(NSURL*) url :(id<org_robovm_objc_block_VoidBlock3>) completionHandler 
{
    NSURLSessionDataTask* re$ult = [self dataTaskWithURL:(url == JAVA_NULL ? nil : url) completionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSData* data, NSURLResponse* response, NSError* error) {
        [completionHandler invoke___java_lang_Object_java_lang_Object_java_lang_Object:(data ? data : JAVA_NULL) :(response ? response : JAVA_NULL) :(error ? error : JAVA_NULL)];
    })];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDownloadTask *)downloadTaskWithRequest:(NSURLRequest *)request;
- (NSURLSessionDownloadTask*) downloadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest:(NSURLRequest*) request 
{
    NSURLSessionDownloadTask* re$ult = [self downloadTaskWithRequest:(request == JAVA_NULL ? nil : request)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDownloadTask *)downloadTaskWithRequest:(NSURLRequest *)request completionHandler:(void (^)(NSURL *location, NSURLResponse *response, NSError *error))completionHandler;
- (NSURLSessionDownloadTask*) downloadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest_org_robovm_objc_block_VoidBlock3:(NSURLRequest*) request :(id<org_robovm_objc_block_VoidBlock3>) completionHandler 
{
    NSURLSessionDownloadTask* re$ult = [self downloadTaskWithRequest:(request == JAVA_NULL ? nil : request) completionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSURL* location, NSURLResponse* response, NSError* error) {
        [completionHandler invoke___java_lang_Object_java_lang_Object_java_lang_Object:(location ? location : JAVA_NULL) :(response ? response : JAVA_NULL) :(error ? error : JAVA_NULL)];
    })];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDownloadTask *)downloadTaskWithResumeData:(NSData *)resumeData;
- (NSURLSessionDownloadTask*) downloadTaskWithResumeData___crossmobile_ios_foundation_NSData:(NSData*) resumeData 
{
    NSURLSessionDownloadTask* re$ult = [self downloadTaskWithResumeData:(resumeData == JAVA_NULL ? nil : resumeData)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDownloadTask *)downloadTaskWithResumeData:(NSData *)resumeData completionHandler:(void (^)(NSURL *location, NSURLResponse *response, NSError *error))completionHandler;
- (NSURLSessionDownloadTask*) downloadTaskWithResumeData___crossmobile_ios_foundation_NSData_org_robovm_objc_block_VoidBlock3:(NSData*) resumeData :(id<org_robovm_objc_block_VoidBlock3>) completionHandler 
{
    NSURLSessionDownloadTask* re$ult = [self downloadTaskWithResumeData:(resumeData == JAVA_NULL ? nil : resumeData) completionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSURL* location, NSURLResponse* response, NSError* error) {
        [completionHandler invoke___java_lang_Object_java_lang_Object_java_lang_Object:(location ? location : JAVA_NULL) :(response ? response : JAVA_NULL) :(error ? error : JAVA_NULL)];
    })];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDownloadTask *)downloadTaskWithURL:(NSURL *)url;
- (NSURLSessionDownloadTask*) downloadTaskWithURL___crossmobile_ios_foundation_NSURL:(NSURL*) url 
{
    NSURLSessionDownloadTask* re$ult = [self downloadTaskWithURL:(url == JAVA_NULL ? nil : url)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionDownloadTask *)downloadTaskWithURL:(NSURL *)url completionHandler:(void (^)(NSURL *location, NSURLResponse *response, NSError *error))completionHandler;
- (NSURLSessionDownloadTask*) downloadTaskWithURL___crossmobile_ios_foundation_NSURL_org_robovm_objc_block_VoidBlock3:(NSURL*) url :(id<org_robovm_objc_block_VoidBlock3>) completionHandler 
{
    NSURLSessionDownloadTask* re$ult = [self downloadTaskWithURL:(url == JAVA_NULL ? nil : url) completionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSURL* location, NSURLResponse* response, NSError* error) {
        [completionHandler invoke___java_lang_Object_java_lang_Object_java_lang_Object:(location ? location : JAVA_NULL) :(response ? response : JAVA_NULL) :(error ? error : JAVA_NULL)];
    })];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (void)finishTasksAndInvalidate;
- (void) finishTasksAndInvalidate__
{
    [self finishTasksAndInvalidate];
}

// direct binding of: - (void)flushWithCompletionHandler:(void (^)(void))completionHandler;
- (void) flushWithCompletionHandler___java_lang_Runnable:(id<java_lang_Runnable>) completionHandler 
{
    [self flushWithCompletionHandler:(completionHandler == JAVA_NULL ? nil : ^{
        [completionHandler run__];
    })];
}

// direct binding of: - (void)getAllTasksWithCompletionHandler:(void (^)(NSArray<__kindof NSURLSessionTask *> *tasks))completionHandler;
- (void) getAllTasksWithCompletionHandler___org_robovm_objc_block_VoidBlock1:(id<org_robovm_objc_block_VoidBlock1>) completionHandler 
{
    [self getAllTasksWithCompletionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSArray<NSURLSessionTask*>* tasks) {
        [completionHandler invoke___java_lang_Object:(tasks ? tasks : JAVA_NULL)];
    })];
}

// direct binding of: - (void)getTasksWithCompletionHandler:(void (^)(NSArray<NSURLSessionDataTask *> *dataTasks, NSArray<NSURLSessionUploadTask *> *uploadTasks, NSArray<NSURLSessionDownloadTask *> *downloadTasks))completionHandler;
- (void) getTasksWithCompletionHandler___org_robovm_objc_block_VoidBlock3:(id<org_robovm_objc_block_VoidBlock3>) completionHandler 
{
    [self getTasksWithCompletionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSArray<NSURLSessionDataTask*>* dataTasks, NSArray<NSURLSessionUploadTask*>* uploadTasks, NSArray<NSURLSessionDownloadTask*>* downloadTasks) {
        [completionHandler invoke___java_lang_Object_java_lang_Object_java_lang_Object:(dataTasks ? dataTasks : JAVA_NULL) :(uploadTasks ? uploadTasks : JAVA_NULL) :(downloadTasks ? downloadTasks : JAVA_NULL)];
    })];
}

// direct binding of: - (void)invalidateAndCancel;
- (void) invalidateAndCancel__
{
    [self invalidateAndCancel];
}

// direct binding of: - (void)resetWithCompletionHandler:(void (^)(void))completionHandler;
- (void) resetWithCompletionHandler___java_lang_Runnable:(id<java_lang_Runnable>) completionHandler 
{
    [self resetWithCompletionHandler:(completionHandler == JAVA_NULL ? nil : ^{
        [completionHandler run__];
    })];
}

// direct binding of: - (NSURLSessionStreamTask *)streamTaskWithHostName:(NSString *)hostname port:(NSInteger)port;
- (NSURLSessionStreamTask*) streamTaskWithHostName___java_lang_String_int:(NSString*) hostname :(int) port 
{
    NSURLSessionStreamTask* re$ult = [self streamTaskWithHostName:(hostname == JAVA_NULL ? nil : hostname) port:port];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromData:(NSData *)bodyData;
- (NSURLSessionUploadTask*) uploadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest_crossmobile_ios_foundation_NSData:(NSURLRequest*) request :(NSData*) bodyData 
{
    NSURLSessionUploadTask* re$ult = [self uploadTaskWithRequest:(request == JAVA_NULL ? nil : request) fromData:(bodyData == JAVA_NULL ? nil : bodyData)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromData:(NSData *)bodyData completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler;
- (NSURLSessionUploadTask*) uploadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest_crossmobile_ios_foundation_NSData_org_robovm_objc_block_VoidBlock3:(NSURLRequest*) request :(NSData*) bodyData :(id<org_robovm_objc_block_VoidBlock3>) completionHandler 
{
    NSURLSessionUploadTask* re$ult = [self uploadTaskWithRequest:(request == JAVA_NULL ? nil : request) fromData:(bodyData == JAVA_NULL ? nil : bodyData) completionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSData* data, NSURLResponse* response, NSError* error) {
        [completionHandler invoke___java_lang_Object_java_lang_Object_java_lang_Object:(data ? data : JAVA_NULL) :(response ? response : JAVA_NULL) :(error ? error : JAVA_NULL)];
    })];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromFile:(NSURL *)fileURL;
- (NSURLSessionUploadTask*) uploadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest_crossmobile_ios_foundation_NSURL:(NSURLRequest*) request :(NSURL*) fileURL 
{
    NSURLSessionUploadTask* re$ult = [self uploadTaskWithRequest:(request == JAVA_NULL ? nil : request) fromFile:(fileURL == JAVA_NULL ? nil : fileURL)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromFile:(NSURL *)fileURL completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler;
- (NSURLSessionUploadTask*) uploadTaskWithRequest___crossmobile_ios_foundation_NSURLRequest_crossmobile_ios_foundation_NSURL_org_robovm_objc_block_VoidBlock3:(NSURLRequest*) request :(NSURL*) fileURL :(id<org_robovm_objc_block_VoidBlock3>) completionHandler 
{
    NSURLSessionUploadTask* re$ult = [self uploadTaskWithRequest:(request == JAVA_NULL ? nil : request) fromFile:(fileURL == JAVA_NULL ? nil : fileURL) completionHandler:(completionHandler == JAVA_NULL ? nil : ^(NSData* data, NSURLResponse* response, NSError* error) {
        [completionHandler invoke___java_lang_Object_java_lang_Object_java_lang_Object:(data ? data : JAVA_NULL) :(response ? response : JAVA_NULL) :(error ? error : JAVA_NULL)];
    })];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (NSURLSessionUploadTask *)uploadTaskWithStreamedRequest:(NSURLRequest *)request;
- (NSURLSessionUploadTask*) uploadTaskWithStreamedRequest___crossmobile_ios_foundation_NSURLRequest:(NSURLRequest*) request 
{
    NSURLSessionUploadTask* re$ult = [self uploadTaskWithStreamedRequest:(request == JAVA_NULL ? nil : request)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

@end
