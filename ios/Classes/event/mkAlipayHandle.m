//
//  mkAlipay.m
//  flutter_alipay
//
//  Created by Mark on 2019/6/25.
//

#import "mkAlipayHandle.h"
#import "mkPayEvent.h"
@interface mkAlipayHandle()
/** input call */
@property (nonatomic ,strong) FlutterMethodCall *inputCall;

/** 回调 */
@property (nonatomic) FlutterResult result;
@end
@implementation mkAlipayHandle

+(mkAlipayHandle* )mkAlipayHandleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result{
    mkAlipayHandle *alipayEvent = mkAlipayHandle.new;
    [alipayEvent handleEventWithMethodCall:call result:result];
    return alipayEvent;
}

-(void)handleEventWithMethodCall:(FlutterMethodCall *)methodCall result:(FlutterResult)result{
    NSString *method_classname = [self classNameFromMethod:methodCall.method];
    if(!method_classname){
        //失败
        result(FlutterMethodNotImplemented);
    }
    Class method_handler = NSClassFromString(method_classname);
    [method_handler mkPayEventHandleWithMethodCall:methodCall result:result];
}
-(NSString *)classNameFromMethod:(NSString *)method{
    NSDictionary *methodmap = @{
                                @"orderpay":@"mkAliOrderPay"
    };
    if([methodmap.allKeys containsObject:method]){
        return [methodmap objectForKey:method];
    }
    return nil;
}

@end


