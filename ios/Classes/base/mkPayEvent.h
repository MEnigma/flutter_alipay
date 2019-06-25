//
//  mkPayEvent.h
//  flutter_alipay
//
//  Created by Mark on 2019/6/25.
//

#import <Foundation/Foundation.h>

#import <Flutter/Flutter.h>
NS_ASSUME_NONNULL_BEGIN

@interface mkPayEvent : NSObject

/// 初始化
+(id)mkPayEventHandleWithMethodCall:(FlutterMethodCall *)methodcall result:(FlutterResult)result;

/// 额外配置
-(void)initConfig;

/// 处理方法
-(void)handleMethod:(FlutterMethodCall *)methodcall
             result:(FlutterResult)result;
@end

NS_ASSUME_NONNULL_END
