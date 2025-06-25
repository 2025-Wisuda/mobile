import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/extensions/extension.dart';

/// A primary-styled AppBar widget with modern minimalist design.
///
/// This widget provides a custom AppBar implementation with bordered back button,
/// centered title, and action buttons. Maintains clean visual hierarchy
/// with ultra-thin borders and consistent spacing.
///
/// ## Features:
/// - Standard 44px height with proper SafeArea handling
/// - 17sp title text with w600 weight for clear hierarchy
/// - Optional bordered back button with subtle styling
/// - Flexible action button support
/// - Ultra-thin border separation
///
/// ## Usage:
/// ```dart
/// CustomPrimaryAppBarWidget(
///   title: "Profile Settings",
///   showBackButton: true,
///   showSearchButton: true,
///   onTapSearchButton: () => _openSearch(),
/// )
/// ```
class CustomPrimaryAppBarWidget extends StatelessWidget {
  final String? title;
  final Function()? onTapSearchButton;
  final bool showSearchButton;
  final Widget? actionButton;
  final Function()? onTapBackButton;
  final bool showBackButton;
  final Widget? backButton;
  final Widget? mainWidget;

  const CustomPrimaryAppBarWidget({
    super.key,
    this.title,
    this.onTapSearchButton,
    this.showSearchButton = false,
    this.actionButton,
    this.backButton,
    this.onTapBackButton,
    this.showBackButton = true,
    this.mainWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44 + MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
        color: context.surface,
        border: Border(
          bottom: BorderSide(
            color: context.outline.withValues(alpha: 0.8),
            width: 0.33,
          ),
        ),
      ),
      child: SafeArea(
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              // Back button or spacer
              if (showBackButton)
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: context.outline.withValues(alpha: 0.6),
                      width: 0.5,
                    ),
                  ),
                  child: backButton ??
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        iconSize: 18,
                        onPressed: () {
                          onTapBackButton?.call() ?? Get.back();
                        },
                      ),
                )
              else
                const SizedBox(width: 44),

              // Spacing
              const SizedBox(width: 16),

              // Main content
              if (mainWidget != null)
                Expanded(child: mainWidget!)
              else
                Expanded(
                  child: Text(
                    title ?? '',
                    style: context.titleMediumW(600),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),

              // Spacing
              const SizedBox(width: 16),

              // Action button
              if (actionButton != null)
                actionButton!
              else if (showSearchButton)
                IconButton(
                  icon: const Icon(Icons.search_rounded),
                  iconSize: 18,
                  onPressed: onTapSearchButton,
                )
              else
                const SizedBox(width: 44),
            ],
          ),
        ),
      ),
    );
  }
}
