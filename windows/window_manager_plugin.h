#ifndef FLUTTER_PLUGIN_WINDOW_MANAGER_PLUGIN_H_
#define FLUTTER_PLUGIN_WINDOW_MANAGER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace window_manager {

class WindowManagerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  WindowManagerPlugin();

  virtual ~WindowManagerPlugin();

  // Disallow copy and assign.
  WindowManagerPlugin(const WindowManagerPlugin&) = delete;
  WindowManagerPlugin& operator=(const WindowManagerPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace window_manager

#endif  // FLUTTER_PLUGIN_WINDOW_MANAGER_PLUGIN_H_
