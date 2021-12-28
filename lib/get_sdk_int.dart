import 'dart:async';

import 'package:flutter/services.dart';

class GetSDKInt {
  static const MethodChannel _channel = const MethodChannel('get_sdk_int');

  // ignore: non_constant_identifier_names
  static Future<int?> get SDK_INT async {
    final sdk = await _channel.invokeMethod<int>('getSDKInt');
    return sdk;
  }
}
