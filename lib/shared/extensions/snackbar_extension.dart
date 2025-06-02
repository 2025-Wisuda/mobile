import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/errors/failure.dart';

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


extension FailureSnackbarExtension on BuildContext {
  void showFailureSnackbar(Failure failure) {
    final message = failure.message;
    final isConnectionError = failure is NoConnectionFailure;

    showErrorSnackbar(
      isConnectionError ? 'common.noInternet'.tr() : message,
    );
  }
}
