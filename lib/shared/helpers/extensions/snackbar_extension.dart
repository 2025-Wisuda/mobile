// Flutter imports:
import 'package:flutter/material.dart';

extension SnackbarExtension on BuildContext {
  void showErrorSnackbar(String message) {
    Future.microtask(() {
      if (mounted) {
        ScaffoldMessenger.of(this).showSnackBar(
          SnackBar(
            content: Text(
              message,
              style: TextStyle(color: Theme.of(this).colorScheme.onError),
            ),
            backgroundColor: Theme.of(this).colorScheme.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    });
  }

  void showSuccessSnackbar(String message) {
    Future.microtask(() {
      if (mounted) {
        ScaffoldMessenger.of(this).showSnackBar(
          SnackBar(
            content: Text(
              message,
              style: TextStyle(color: Theme.of(this).colorScheme.onTertiary),
            ),
            backgroundColor: Theme.of(this).colorScheme.tertiary,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    });
  }
}
