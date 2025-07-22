import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/enums/snackbar_type_enum.dart';

/// Shows a custom snackbar using GetX with a modern, toast-like design.
///
/// This function is context-less and can be configured to show at the top or bottom.
/// Safely handles calls during build phase by using post-frame callback.
void showCustomSnackbar({
  required String message,
  required SnackbarType type,
  bool showOnTop = false,
}) {
  // Safety check: Don't call during build phase
  WidgetsBinding.instance.addPostFrameCallback((_) {
    _showSnackbarSafely(
      message: message,
      type: type,
      showOnTop: showOnTop,
    );
  });
}

/// Internal method to show snackbar after build is complete
void _showSnackbarSafely({
  required String message,
  required SnackbarType type,
  bool showOnTop = false,
}) {
  // Close existing snackbar if open
  if (Get.isSnackbarOpen) {
    Get.closeCurrentSnackbar();
  }

  final colorScheme = Get.theme.colorScheme;
  final textTheme = Get.theme.textTheme;

  Get.snackbar(
    '', // Title is not used
    '', // Message is not used
    snackPosition: showOnTop ? SnackPosition.TOP : SnackPosition.BOTTOM,
    backgroundColor: type.backgroundColor,
    borderRadius: 12,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    titleText: const SizedBox.shrink(),
    messageText: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(type.icon, color: colorScheme.surface, size: 22),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            message,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.surface,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
    shouldIconPulse: false,
    duration: const Duration(seconds: 3),
    isDismissible: true,
    boxShadows: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.1),
        offset: const Offset(0, 4),
        blurRadius: 10,
      ),
    ],
    forwardAnimationCurve: Curves.easeOutQuad,
    reverseAnimationCurve: Curves.easeInQuad,
  );
}

/// Immediate version for use outside build context (use with caution)
void showCustomSnackbarImmediate({
  required String message,
  required SnackbarType type,
  bool showOnTop = false,
}) {
  _showSnackbarSafely(
    message: message,
    type: type,
    showOnTop: showOnTop,
  );
}
