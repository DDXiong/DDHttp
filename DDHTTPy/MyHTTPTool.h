//
//  MyHTTPTool.h
//  新浪
//
//  Created by tarena500 on 15/8/20.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyHTTPTool : NSObject
+(void)get:(NSString*)url parameters:(NSDictionary*)parameter success:(void (^)(id response))success failure:(void (^)(NSError *error))failure;

+(void)post:(NSString*)url parameters:(NSDictionary*)parameter success:(void (^)(id response))success failure:(void (^)(NSError *error))failure;



@end
