//
//  mkPayEvent.m
//  flutter_alipay
//
//  Created by Mark on 2019/6/25.
//

#import "mkPayEvent.h"

@implementation mkPayEvent
+(id)mkPayEventHandleWithMethodCall:(FlutterMethodCall *)methodcall result:(FlutterResult)result{
    id event = [[self.class alloc] init];
    [event initConfig];
    [event handleMethod:methodcall result:result];
    return event;
}

-(void)initConfig{
    
}

-(void)handleMethod:(FlutterMethodCall *)methodcall result:(FlutterResult)result{
    
}

@end
