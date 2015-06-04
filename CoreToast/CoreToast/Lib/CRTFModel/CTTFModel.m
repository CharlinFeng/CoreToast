//
//  CRTFModel.m
//  Carpenter
//
//  Created by 冯成林 on 15/6/4.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "CTTFModel.h"

@implementation CTTFModel

/** 快速实例化 */
+(instancetype)modelWithTextField:(UITextField *)textField msg:(NSString *)msg{
    
    CTTFModel *model = [[CTTFModel alloc] init];
    
    model.textField =textField;
    
    model.msg = msg;
    
    return model;
}

@end
