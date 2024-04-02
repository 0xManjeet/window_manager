import 'window_manager_platform_interface.dart';

class WindowManager {
  Future<String?> getPlatformVersion() {
    return WindowManagerPlatform.instance.getPlatformVersion();
  }

  Future<void> disableScreenshot() {
    return WindowManagerPlatform.instance.disableScreenshot();
  }

  Future<void> enableScreenshot() {
    return WindowManagerPlatform.instance.enableScreenshot();
  }
}
