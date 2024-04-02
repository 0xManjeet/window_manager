import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:window_manager/window_manager.dart';
import 'package:window_manager/window_manager_method_channel.dart';
import 'package:window_manager/window_manager_platform_interface.dart';

class MockWindowManagerPlatform
    with MockPlatformInterfaceMixin
    implements WindowManagerPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> disableScreenshot() {
    throw UnimplementedError();
  }

  @override
  Future<void> enableScreenshot() {
    throw UnimplementedError();
  }
}

void main() {
  final WindowManagerPlatform initialPlatform = WindowManagerPlatform.instance;

  test('$MethodChannelWindowManager is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWindowManager>());
  });

  test('getPlatformVersion', () async {
    WindowManager windowManagerPlugin = WindowManager();
    MockWindowManagerPlatform fakePlatform = MockWindowManagerPlatform();
    WindowManagerPlatform.instance = fakePlatform;

    expect(await windowManagerPlugin.getPlatformVersion(), '42');
  });
}
