
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterZebraSdk {
  static const MethodChannel _channel =
      const MethodChannel('flutter_zebra_sdk');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}