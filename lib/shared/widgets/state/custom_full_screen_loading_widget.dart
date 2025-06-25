import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomFullScreenLoadingWidget {
  static void show(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(milliseconds: 1200),
    bool barrierDismissible = false,
  }) {
    showGeneralDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: context.shadow.withValues(alpha: 0.95),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: context.surface,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: context.shadow.withValues(alpha: 0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomPrimaryLoadingWidget(),
                const SizedBox(height: 16),
                Text(
                  message,
                  style: context.bodyMedium().copyWith(
                        color: context.onSurface.withValues(alpha: 0.9),
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<void> showWithDelay(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(milliseconds: 1200),
    bool barrierDismissible = false,
  }) async {
    show(
      context,
      message: message,
      duration: duration,
      barrierDismissible: barrierDismissible,
    );
    await Future.delayed(duration);
  }

  static void hide(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
