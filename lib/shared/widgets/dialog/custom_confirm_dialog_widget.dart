import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/button/custom_submit_button_widget.dart';

enum DialogType {
  info,
  warning,
  error,
  success,
  destructive,
}

class CustomConfirmDialogWidget extends StatefulWidget {
  final String title;
  final String message;
  final String confirmText;
  final String? cancelText;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;
  final DialogType type;
  final bool barrierDismissible;
  final IconData? icon;
  final bool showCloseButton;
  final List<Widget>? customActions;
  final bool showActions;

  const CustomConfirmDialogWidget({
    super.key,
    required this.title,
    required this.message,
    required this.confirmText,
    required this.onConfirm,
    this.cancelText,
    this.onCancel,
    this.type = DialogType.info,
    this.barrierDismissible = true,
    this.icon,
    this.showCloseButton = false,
    this.customActions,
    this.showActions = true,
  });

  @override
  State<CustomConfirmDialogWidget> createState() =>
      _CustomConfirmDialogWidgetState();
}

class _CustomConfirmDialogWidgetState extends State<CustomConfirmDialogWidget> {
  Timer? _autoCloseTimer;

  @override
  void initState() {
    super.initState();

    if (!widget.showActions) {
      _autoCloseTimer = Timer(const Duration(seconds: 2), () {
        if (mounted) {
          Get.back();
        }
      });
    }
  }

  @override
  void dispose() {
    _autoCloseTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dialogColors = _getDialogColors(context);

    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Close button aligned to the right
          if (widget.showCloseButton)
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  color: context.surface,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: context.shadow.withValues(alpha: 0.1),
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.close,
                    color: context.onSurface.withValues(alpha: 0.6),
                    size: 18,
                  ),
                  padding: EdgeInsets.all(6),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                ),
              ),
            ),

          // Add spacing between close button and main content
          if (widget.showCloseButton) SizedBox(height: 8),

          // Main dialog content container
          Container(
            decoration: BoxDecoration(
              color: context.surface,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: context.shadow.withValues(alpha: 0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title section
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: dialogColors.iconBackgroundColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          widget.icon ?? _getDialogIcon(),
                          color: dialogColors.iconColor,
                          size: 24,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          widget.title,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: context.onSurface,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: Text(
                    widget.message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: context.onSurface.withValues(alpha: 0.8),
                        ),
                  ),
                ),

                // Actions section
                if (widget.showActions)
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: widget.customActions ??
                              _buildDefaultActions(context, dialogColors),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildDefaultActions(
      BuildContext context, _DialogColors dialogColors) {
    return [
      Expanded(
        child: CustomSubmitButtonWidget(
          onPressed: widget.onCancel ?? () => Get.back(),
          textButton: widget.cancelText ?? 'common'.message('cancel'),
          isFormValid: true,
          buttonType: CustomButtonType.outlined,
          height: 48,
          borderRadius: 8,
          borderColor: context.outline.withValues(alpha: 0.3),
          textColor: context.onSurface.withValues(alpha: 0.8),
        ),
      ),
      SizedBox(width: 12),
      Expanded(
        child: CustomSubmitButtonWidget(
          onPressed: () {
            Get.back();
            widget.onConfirm();
          },
          textButton: widget.confirmText,
          isFormValid: true,
          buttonType: CustomButtonType.elevated,
          height: 48,
          borderRadius: 8,
          backgroundColor: dialogColors.confirmButtonColor,
          textColor: dialogColors.confirmButtonTextColor,
        ),
      ),
    ];
  }

  IconData _getDialogIcon() {
    switch (widget.type) {
      case DialogType.info:
        return Icons.info_outline;
      case DialogType.warning:
        return Icons.warning_amber_outlined;
      case DialogType.error:
        return Icons.error_outline;
      case DialogType.success:
        return Icons.check_circle_outline;
      case DialogType.destructive:
        return Icons.delete_outline;
    }
  }

  _DialogColors _getDialogColors(BuildContext context) {
    switch (widget.type) {
      case DialogType.info:
        return _DialogColors(
          iconColor: context.primary,
          iconBackgroundColor: context.primary.withValues(alpha: 0.1),
          confirmButtonColor: context.primary,
          confirmButtonTextColor: context.onPrimary,
        );
      case DialogType.warning:
        return _DialogColors(
          iconColor: context.secondary,
          iconBackgroundColor: context.secondary.withValues(alpha: 0.1),
          confirmButtonColor: context.secondary,
          confirmButtonTextColor: context.onSecondary,
        );
      case DialogType.error:
        return _DialogColors(
          iconColor: context.error,
          iconBackgroundColor: context.error.withValues(alpha: 0.1),
          confirmButtonColor: context.error,
          confirmButtonTextColor: context.onError,
        );
      case DialogType.success:
        return _DialogColors(
          iconColor: context.tertiary,
          iconBackgroundColor: context.tertiary.withValues(alpha: 0.1),
          confirmButtonColor: context.tertiary,
          confirmButtonTextColor: context.onTertiary,
        );
      case DialogType.destructive:
        return _DialogColors(
          iconColor: context.error,
          iconBackgroundColor: context.error.withValues(alpha: 0.1),
          confirmButtonColor: context.error,
          confirmButtonTextColor: context.onError,
        );
    }
  }
}

class _DialogColors {
  final Color iconColor;
  final Color iconBackgroundColor;
  final Color confirmButtonColor;
  final Color confirmButtonTextColor;

  _DialogColors({
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.confirmButtonColor,
    required this.confirmButtonTextColor,
  });
}

Future<void> showCustomConfirmDialog({
  required BuildContext context,
  required String title,
  required String message,
  required String confirmText,
  required VoidCallback onConfirm,
  String? cancelText,
  VoidCallback? onCancel,
  DialogType type = DialogType.info,
  bool barrierDismissible = true,
  IconData? icon,
  bool showCloseButton = false,
  List<Widget>? customActions,
  bool showActions = true,
}) {
  return showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (context) => CustomConfirmDialogWidget(
      title: title,
      message: message,
      confirmText: confirmText,
      onConfirm: onConfirm,
      cancelText: cancelText,
      onCancel: onCancel,
      type: type,
      barrierDismissible: barrierDismissible,
      icon: icon,
      showCloseButton: showCloseButton,
      customActions: customActions,
      showActions: showActions,
    ),
  );
}
