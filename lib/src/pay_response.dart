/**
    Project         : flutter_alipay
    Package name    : src
    Filename        : pay_response
    Date            : 2019/6/25 4:16 PM

    AUTHER : Mark
    EMAIL  : mkw666311@163.com
 */

import "package:flutter/material.dart";
import 'dart:convert';

class PayResult {

  PayResult.fromJson(String mapString){
    Map data = jsonDecode(mapString);
    this.succeed = int.parse(data['succeed'].toString() ?? "0") == 1;
    this.message = (data['message'] ?? "");
    this.debugmsg = (data['debugmsg'] ?? "");
    this.ext = jsonDecode(data['ext'] ?? "");
  }

  /// 是否成功
  bool succeed;

  /// 错误消息
  String message;

  /// 调试信息
  String debugmsg;

  /// 拓展信息
  Map ext;
}
