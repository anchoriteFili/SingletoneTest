//
//  BlockTest.h
//  单例测试
//
//  Created by lanou3g on 15-7-23.
//  Copyright (c) 2015年 hehehe. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^Myblock)(NSInteger a);

@interface BlockTest : NSObject

@property (nonatomic,copy) Myblock block;

@end
