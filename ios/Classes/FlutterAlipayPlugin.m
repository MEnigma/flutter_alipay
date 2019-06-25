#import "FlutterAlipayPlugin.h"
#import "mkAlipayHandle.h"

static NSObject<FlutterPluginRegistrar>* _registrar;

@implementation FlutterAlipayPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
//    _registrar = registrar;
  
    
    FlutterMethodChannel *alipay_order_channel = [FlutterMethodChannel methodChannelWithName:@"channel_alipay_order#mark"
                                                                             binaryMessenger:registrar.messenger];
    
    [alipay_order_channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        [mkAlipayHandle mkAlipayHandleMethodCall:call result:result];
    }];
    
}

+ (NSObject<FlutterPluginRegistrar> *)getRegister{
    return _registrar;
}

@end
