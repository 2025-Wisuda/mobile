import 'package:flutter/material.dart';

import 'package:get/get.dart';

enum SnackbarType {
  success,
  error,
  warning,
  info;

  IconData get icon {
    switch (this) {
      case SnackbarType.success:
        return Icons.check_circle_outline_rounded;
      case SnackbarType.error:
        return Icons.error_outline_rounded;
      case SnackbarType.warning:
        return Icons.warning_amber_rounded;
      case SnackbarType.info:
        return Icons.info_outline_rounded;
    }
  }

  Color get backgroundColor {
    final colorScheme = Get.theme.colorScheme;
    switch (this) {
      case SnackbarType.success:
        return colorScheme.tertiary.withValues(alpha: 0.95);
      case SnackbarType.error:
        return colorScheme.error.withValues(alpha: 0.95);
      case SnackbarType.warning:
        return colorScheme.secondary.withValues(alpha: 0.95);
      case SnackbarType.info:
        return colorScheme.primary.withValues(alpha: 0.95);
    }
  }

  String get title {
    switch (this) {
      case SnackbarType.success:
        return 'common'.tr;
      case SnackbarType.error:
        return 'common'.tr;
      case SnackbarType.warning:
        return 'common'.tr;
      case SnackbarType.info:
        return 'common'.tr;
    }
  }
}
