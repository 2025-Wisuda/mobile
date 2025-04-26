import 'package:flutter/foundation.dart';
import 'package:mobile/core/enums/platform/platform_enum.dart';


PlatformType getPlatformType() {
  if (kIsWeb) {
    return PlatformType.web;
  }

  switch (defaultTargetPlatform) {
    case TargetPlatform.iOS:
      return PlatformType.ios;
    case TargetPlatform.android:
      return PlatformType.android;
    case TargetPlatform.macOS:
      return PlatformType.macos;
    case TargetPlatform.windows:
      return PlatformType.windows;
    case TargetPlatform.linux:
      return PlatformType.linux;
    case TargetPlatform.fuchsia:
      return PlatformType.unknown;
    }
}
