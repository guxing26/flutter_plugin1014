import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPlugin1014 {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin1014');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  ///toast
  static Future<void> toast(String message) {
    _channel.invokeMethod("toast", message);
  }
}
