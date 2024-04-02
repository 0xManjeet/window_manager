#include "include/window_manager/window_manager_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "window_manager_plugin.h"

void WindowManagerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  window_manager::WindowManagerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
