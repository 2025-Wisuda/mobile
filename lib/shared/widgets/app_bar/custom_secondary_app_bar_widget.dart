import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/extensions/extension.dart';

/// A secondary-styled AppBar widget with modern minimalist design.
///
/// This widget provides a custom AppBar implementation with flexible button configurations,
/// centered title, and ultra-clean styling. Maintains visual hierarchy
/// with consistent spacing and subtle elements.
///
/// ## Features:
/// - Standard 44px height with proper SafeArea handling
/// - 17sp title text with w600 weight for clear hierarchy
/// - Flexible back button styling (bordered or borderless)
/// - Multiple action button options with 18px icons
/// - Ultra-thin border separation
///
/// ## Usage:
/// ```dart
/// CustomSecondaryAppBarWidget(
///   titleAppBar: "Search Results",
///   showBackButton: true,
///   showSearchButton: true,
///   onTapSearchButton: () => _openSearch(),
/// )
/// ```
class CustomSecondaryAppBarWidget extends StatelessWidget {
  final String? titleAppBar;
  final Function()? onTapSearchButton;
  final bool showSearchButton;
  final bool showQrButton;
  final Color? backgroundColor;
  final Widget? actionButton;
  final Widget? backButton;
  final WidgetStateProperty<Color?>? iconBackgroundColor;
  final Widget? trailingButton;
  final Function()? onTapTrailingButton;
  final bool showTrailing;
  final bool showBackButton;
  final Color? backButtonBorderColor;
  final Function()? onTapBackButton;
  final EdgeInsetsGeometry? titlePadding;
  final Color? borderColor;
  final bool showBackButtonBorder;

  const CustomSecondaryAppBarWidget({
    super.key,
    this.titleAppBar,
    this.onTapSearchButton,
    this.showSearchButton = false,
    this.showQrButton = false,
    this.backgroundColor,
    this.actionButton,
    this.backButton,
    this.iconBackgroundColor,
    this.trailingButton,
    this.onTapTrailingButton,
    this.showTrailing = false,
    this.showBackButton = true,
    this.backButtonBorderColor,
    this.onTapBackButton,
    this.titlePadding,
    this.borderColor,
    this.showBackButtonBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44 + MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.surface,
        border: Border(
          bottom: BorderSide(
            color: borderColor ?? context.outline.withValues(alpha: 0.8),
            width: 0.33,
          ),
        ),
      ),
      child: SafeArea(
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Side buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button
                  if (showBackButton)
                    showBackButtonBorder
                        ? Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: backButtonBorderColor ??
                                    context.outline.withValues(alpha: 0.6),
                                width: 0.5,
                              ),
                            ),
                            child: backButton ??
                                IconButton(
                                  icon: const Icon(
                                      Icons.arrow_back_ios_new_rounded),
                                  iconSize: 18,
                                  onPressed: () {
                                    onTapBackButton?.call() ?? Get.back();
                                  },
                                ),
                          )
                        : IconButton(
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                            iconSize: 18,
                            onPressed: () {
                              onTapBackButton?.call() ?? Get.back();
                            },
                          )
                  else
                    const SizedBox(width: 44),

                  // Right side actions
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (showSearchButton)
                        IconButton(
                          icon: const Icon(Icons.search_rounded),
                          iconSize: 18,
                          onPressed: onTapSearchButton,
                        ),
                      if (showTrailing)
                        IconButton(
                          icon: trailingButton ??
                              const Icon(Icons.more_vert_rounded),
                          iconSize: 18,
                          onPressed: onTapTrailingButton,
                        ),
                      if (actionButton != null) actionButton!,
                    ],
                  ),
                ],
              ),

              // Centered title
              Padding(
                padding:
                    titlePadding ?? const EdgeInsets.symmetric(horizontal: 64),
                child: Text(
                  titleAppBar ?? '',
                  style: context.titleMediumW(600),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
