//
//  XDownloader.h
//  0120-URLConnectionDownloader
//
//  Created by xzr on 15-1-20.
//  Copyright (c) 2015年 xzr.etc All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XDownloader : NSObject

- (void)downloadWithURL:(NSURL *)url Progress:(void (^)(float progress))progress Completion:(void (^)(NSString *filePath))completion Failed:(void (^)(NSString *errorMessage))error;
- (void)pause;
@end
