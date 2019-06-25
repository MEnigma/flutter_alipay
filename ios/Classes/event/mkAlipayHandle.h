//
//  mkAlipay.h
//  flutter_alipay
//
//  Created by Mark on 2019/6/25.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>
#import <AlipaySDK/AlipaySDK.h>
#import "FlutterAlipayPlugin.h"
NS_ASSUME_NONNULL_BEGIN

@interface mkAlipayHandle : NSObject

/// 处理支付宝事件
+(mkAlipayHandle* )mkAlipayHandleMethodCall:(FlutterMethodCall*)call
                         result:(FlutterResult)result;

@end

NS_ASSUME_NONNULL_END
