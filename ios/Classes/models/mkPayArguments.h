//
//  mkPayArguments.h
//  flutter_alipay
//
//  Created by Mark on 2019/6/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface mkPayArguments : NSObject

/** 交易参数,一般由服务器生成 */
@property (nonatomic ,copy) NSString * sign;

/** 应用跳转凭证 */
@property (nonatomic ,copy) NSString * scheme;

@end

NS_ASSUME_NONNULL_END
