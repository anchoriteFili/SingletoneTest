//
//  Singletone.m
//  单例测试
//
//  Created by lanou3g on 15-7-23.
//  Copyright (c) 2015年 hehehe. All rights reserved.
//

#import "Singletone.h"

@implementation Singletone



static id _instance = nil;

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    if (_instance == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _instance = [super allocWithZone:zone];
        });
    }
    return _instance;
}

- (instancetype)init {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super init];
    });
    return _instance;
}

+ (instancetype)sharemethodName {
    return [[self alloc] init];
}

@end
