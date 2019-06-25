//
//  mkResult.h
//  flutter_alipay
//
//  Created by Mark on 2019/6/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface mkResult : NSObject

/** 是否成功 */
@property (nonatomic ,assign) NSInteger succeed;

/** 错误消息 */
@property (nonatomic ,copy) NSString * message;

/** 调试信息 */
@property (nonatomic ,copy) NSString * debugmsg;

/** 拓展信息 */
@property (nonatomic ,strong) NSDictionary *ext;

@end

NS_ASSUME_NONNULL_END
