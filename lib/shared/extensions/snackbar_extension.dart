import 'package:flutter/material.dart';

import 'package:mobile/shared/enums/snackbar_type_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

extension SnackbarExtension on BuildContext {
  void showCustomSnackbar({
    required String message,
    required SnackbarType type,
  }) {
    Future.microtask(() {
      if (mounted) {
        ScaffoldMessenger.of(this).showSnackBar(
          SnackBar(
            content: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: surface.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(type.icon, color: surface, size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    message,
                    style: labelLargeW(600).copyWith(
                      color: surface,
                      letterSpacing: -0.3,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: type.backgroundColor,
            duration: const Duration(seconds: 2),
            margin: const EdgeInsets.all(16),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
            dismissDirection: DismissDirection.horizontal,
          ),
        );
      }
    });
  }
}
