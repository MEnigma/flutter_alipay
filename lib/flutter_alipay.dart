library flutter_alipay;
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'src/pay_arguments.dart';
import 'src/pay_response.dart';

export 'src/pay_response.dart';
export 'src/pay_arguments.dart';

/// 支付宝支付
class mkAlipay {

  /// 通道
  final MethodChannel _alipayChannel = MethodChannel("channel_alipay_order#mark");

  /// 支付
  Future<PayResult> payOrder(PayArguments argument) async {
    String result = await _alipayChannel.invokeMethod("orderpay",argument.toJsonString());
    return PayResult.fromJson(result??"");
  }

}