//
//  MyHTTPTool.m
//  新浪
//
//  Created by tarena500 on 15/8/20.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "MyHTTPTool.h"
#import "AFNetworking.h"
@implementation MyHTTPTool

+(void)get:(NSString*)url parameters:(NSDictionary*)parameter success:(void (^)(id response))success failure:(void (^)(NSError *error))failure{
    AFHTTPRequestOperationManager*mgr=[[AFHTTPRequestOperationManager alloc]init];
    [mgr GET:url parameters:parameter success:^(AFHTTPRequestOperation *operation,id response) {

        if (success) {
            success(response);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}


+(void)post:(NSString*)url parameters:(NSDictionary*)parameter success:(void (^)(id response))success failure:(void (^)(NSError *error))failure{
    AFHTTPRequestOperationManager*mgr=[[AFHTTPRequestOperationManager alloc]init];
    [mgr POST:url parameters:parameter success:^(AFHTTPRequestOperation *operation,id response) {
        
        if (success) {
            success(response);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];

}












// if (success) 如果success函数里有内容，调用^(id response)  请求数据回值附给response

//void (^success)(id)=^(id response){
//
//
//}

//
//success:^(id response) {
//    MyUser*user=[MyUser objectWithKeyValues:response];
//    [self.button setTitle:user.screen_name forState:UIControlStateNormal];
//    Myaccount*account=[MyaccountTool account];
//    account.name=user.screen_name;
//    [MyaccountTool save:account];

@end
