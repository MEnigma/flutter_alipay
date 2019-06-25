//
//  mkAliOrderPay.m
//  flutter_alipay
//
//  Created by Mark on 2019/6/25.
//

#import "mkAliOrderPay.h"
#import "mkResult.h"
#import "mkPayArguments.h"
#import <MJExtension.h>
@implementation mkAliOrderPay

-(void)handleMethod:(FlutterMethodCall *)methodcall result:(FlutterResult)result{
    
    mkPayArguments *arguments = [mkPayArguments.new mj_setKeyValues:methodcall.arguments];
    if(!arguments.sign || !arguments.scheme){
        mkResult *res = mkResult.new;
        res.succeed = 0;
        res.message = @"交易失败";
        res.debugmsg = [NSString stringWithFormat:@" sign/scheme 为空,传入参数为 %@",methodcall.arguments];
        result(res.mj_JSONString);
        return;
    }
    [AlipaySDK.defaultService payOrder:arguments.sign
                            fromScheme:arguments.scheme
                              callback:^(NSDictionary *resultDic) {
                                  mkResult *res = mkResult.new;
                                  res.succeed = 1;
                                  res.message = @"交易成功";
                                  res.ext = resultDic;
                                  result(res.mj_JSONString);
                              }];
}

@end
