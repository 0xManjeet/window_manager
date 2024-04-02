import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'window_manager_platform_interface.dart';

/// An implementation of [WindowManagerPlatform] that uses method channels.
class MethodChannelWindowManager extends WindowManagerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('window_manager');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> enableScreenshot() async {
    await methodChannel.invokeMethod<String>('removeFlagSecure');
  }

  @override
  Future<void> disableScreenshot() async {
    await methodChannel.invokeMethod<String>('addFlagSecure');
  }
}
