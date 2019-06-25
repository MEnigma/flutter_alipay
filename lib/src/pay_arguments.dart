/**
    Project         : flutter_alipay
    Package name    : src
    Filename        : pay_arguments
    Date            : 2019/6/25 4:11 PM

    AUTHER : Mark
    EMAIL  : mkw666311@163.com
 */

import "package:flutter/material.dart";
import 'dart:convert';
/// 支付参数
class PayArguments{

  /// 交易参数,一般由服务器生成
  String sign;

  /// 应用跳转凭证
  String scheme;

  Map toJson(){
    return {
      "sign":this.sign,
      "scheme" : this.scheme
    };
  }

  String toJsonString(){
    return jsonEncode(toJson());
  }

}