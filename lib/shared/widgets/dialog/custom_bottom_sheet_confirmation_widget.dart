import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/button/custom_submit_button_widget.dart';

enum BottomSheetType {
  info,
  warning,
  error,
  success,
  destructive,
}

class CustomBottomSheetConfirmationWidget extends StatefulWidget {
  final String title;
  final String message;
  final String confirmText;
  final String? cancelText;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;
  final BottomSheetType type;
  final bool isDismissible;
  final IconData? icon;
  final bool showCloseButton;
  final List<Widget>? customActions;
  final bool showActions;
  final Widget? customContent;

  const CustomBottomSheetConfirmationWidget({
    super.key,
    required this.title,
    required this.message,
    required this.confirmText,
    required this.onConfirm,
    this.cancelText,
    this.onCancel,
    this.type = BottomSheetType.info,
    this.isDismissible = true,
    this.icon,
    this.showCloseButton = true,
    this.customActions,
    this.showActions = true,
    this.customContent,
  });

  @override
  State<CustomBottomSheetConfirmationWidget> createState() =>
      _CustomBottomSheetConfirmationWidgetState();
}

class _CustomBottomSheetConfirmationWidgetState
    extends State<CustomBottomSheetConfirmationWidget>
    with TickerProviderStateMixin {
  Timer? _autoCloseTimer;
  late AnimationController _slideController;
  late AnimationController _fadeController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOutCubic,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOut,
    ));

    _slideController.forward();
    _fadeController.forward();

    if (!widget.showActions) {
      _autoCloseTimer = Timer(const Duration(seconds: 3), () {
        if (mounted) {
          _closeBottomSheet();
        }
      });
    }
  }

  @override
  void dispose() {
    _autoCloseTimer?.cancel();
    _slideController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  void _closeBottomSheet() async {
    widget.onCancel?.call();

    await _slideController.reverse();
    if (mounted) {
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomSheetColors = _getBottomSheetColors(context);
    final mediaQuery = MediaQuery.of(context);

    return GestureDetector(
      onTap: widget.isDismissible ? _closeBottomSheet : null,
      child: Container(
        color: Colors.black54,
        child: GestureDetector(
          onTap: () {},
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: mediaQuery.size.height * 0.85,
                  ),
                  child: Material(
                    color: context.surface,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    elevation: 16,
                    shadowColor: Colors.black26,
                    child: Container(
                      decoration: BoxDecoration(
                        color: context.surface,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                        border: Border.all(
                          color: context.outline.withValues(alpha: 0.1),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildHandle(),
                          _buildHeader(context, bottomSheetColors),
                          _buildContent(context),
                          if (widget.showActions)
                            _buildActions(context, bottomSheetColors),
                          SizedBox(height: mediaQuery.padding.bottom + 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHandle() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      height: 4,
      width: 40,
      decoration: BoxDecoration(
        color: context.outline.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, _BottomSheetColors colors) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colors.iconBackgroundColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: colors.iconColor.withValues(alpha: 0.2),
                width: 1,
              ),
            ),
            child: Icon(
              widget.icon ?? _getBottomSheetIcon(),
              color: colors.iconColor,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: context.bodyLargeW(500).copyWith(
                        color: context.onSurface,
                        height: 1.2,
                      ),
                ),
                const SizedBox(height: 4),
                Container(
                  height: 3,
                  width: 40,
                  decoration: BoxDecoration(
                    color: colors.iconColor.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
          if (widget.showCloseButton)
            Container(
              decoration: BoxDecoration(
                color: context.outline.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: _closeBottomSheet,
                icon: Icon(
                  Icons.close_rounded,
                  color: context.onSurface.withValues(alpha: 0.6),
                  size: 20,
                ),
                padding: const EdgeInsets.all(8),
                constraints: const BoxConstraints(
                  minWidth: 36,
                  minHeight: 36,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.customContent != null)
            widget.customContent!
          else
            Text(
              widget.message,
              style: context.bodyMediumW(500).copyWith(
                    color: context.onSurface.withValues(alpha: 0.8),
                    height: 1.5,
                  ),
            ),
        ],
      ),
    );
  }

  Widget _buildActions(BuildContext context, _BottomSheetColors colors) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
      child: Column(
        children: [
          Container(
            height: 1,
            color: context.outline.withValues(alpha: 0.1),
          ),
          const SizedBox(height: 20),
          if (widget.customActions != null)
            Column(children: widget.customActions!)
          else
            _buildDefaultActions(context, colors),
        ],
      ),
    );
  }

  Widget _buildDefaultActions(BuildContext context, _BottomSheetColors colors) {
    return Row(
      children: [
        Expanded(
          child: CustomSubmitButtonWidget(
            onPressed: widget.onCancel ?? _closeBottomSheet,
            textButton: widget.cancelText ?? 'common'.message('cancel'),
            isFormValid: true,
            buttonType: CustomButtonType.outlined,
            height: 48,
            borderRadius: 24,
            borderColor: context.outline.withValues(alpha: 0.3),
            textColor: context.onSurface.withValues(alpha: 0.8),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: CustomSubmitButtonWidget(
            onPressed: () {
              widget.onConfirm();
            },
            textButton: widget.confirmText,
            isFormValid: true,
            buttonType: CustomButtonType.elevated,
            height: 48,
            borderRadius: 24,
            backgroundColor: colors.confirmButtonColor,
            textColor: colors.confirmButtonTextColor,
          ),
        ),
      ],
    );
  }

  IconData _getBottomSheetIcon() {
    switch (widget.type) {
      case BottomSheetType.info:
        return Icons.info_outline_rounded;
      case BottomSheetType.warning:
        return Icons.warning_amber_rounded;
      case BottomSheetType.error:
        return Icons.error_outline_rounded;
      case BottomSheetType.success:
        return Icons.check_circle_outline_rounded;
      case BottomSheetType.destructive:
        return Icons.delete_outline_rounded;
    }
  }

  _BottomSheetColors _getBottomSheetColors(BuildContext context) {
    switch (widget.type) {
      case BottomSheetType.info:
        return _BottomSheetColors(
          iconColor: context.primary,
          iconBackgroundColor: context.primary.withValues(alpha: 0.12),
          confirmButtonColor: context.primary,
          confirmButtonTextColor: context.onPrimary,
        );
      case BottomSheetType.warning:
        return _BottomSheetColors(
          iconColor: context.secondary,
          iconBackgroundColor: context.secondary.withValues(alpha: 0.12),
          confirmButtonColor: context.secondary,
          confirmButtonTextColor: context.onSecondary,
        );
      case BottomSheetType.error:
        return _BottomSheetColors(
          iconColor: context.error,
          iconBackgroundColor: context.error.withValues(alpha: 0.12),
          confirmButtonColor: context.error,
          confirmButtonTextColor: context.onError,
        );
      case BottomSheetType.success:
        return _BottomSheetColors(
          iconColor: context.tertiary,
          iconBackgroundColor: context.tertiary.withValues(alpha: 0.12),
          confirmButtonColor: context.tertiary,
          confirmButtonTextColor: context.onTertiary,
        );
      case BottomSheetType.destructive:
        return _BottomSheetColors(
          iconColor: context.error,
          iconBackgroundColor: context.error.withValues(alpha: 0.12),
          confirmButtonColor: context.error,
          confirmButtonTextColor: context.onError,
        );
    }
  }
}

class _BottomSheetColors {
  final Color iconColor;
  final Color iconBackgroundColor;
  final Color confirmButtonColor;
  final Color confirmButtonTextColor;

  _BottomSheetColors({
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.confirmButtonColor,
    required this.confirmButtonTextColor,
  });
}

Future<void> showCustomBottomSheetConfirmation({
  required BuildContext context,
  required String title,
  required String message,
  required String confirmText,
  required VoidCallback onConfirm,
  String? cancelText,
  VoidCallback? onCancel,
  BottomSheetType type = BottomSheetType.info,
  bool isDismissible = true,
  IconData? icon,
  bool showCloseButton = true,
  List<Widget>? customActions,
  bool showActions = true,
  Widget? customContent,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: isDismissible,
    enableDrag: isDismissible,
    backgroundColor: Colors.transparent,
    elevation: 0,
    builder: (context) => CustomBottomSheetConfirmationWidget(
      title: title,
      message: message,
      confirmText: confirmText,
      onConfirm: onConfirm,
      cancelText: cancelText,
      onCancel: onCancel,
      type: type,
      isDismissible: isDismissible,
      icon: icon,
      showCloseButton: showCloseButton,
      customActions: customActions,
      showActions: showActions,
      customContent: customContent,
    ),
  );
}
