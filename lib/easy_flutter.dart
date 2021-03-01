
import 'dart:async';

import 'package:flutter/services.dart';

class EasyFlutter {
  static const MethodChannel _channel =
      const MethodChannel('easy_flutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
