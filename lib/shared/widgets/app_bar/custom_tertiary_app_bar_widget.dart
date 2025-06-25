import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/extensions/extension.dart';

/// A tertiary-styled SliverAppBar widget with modern minimalist design.
///
/// This widget provides a custom SliverAppBar implementation for scrollable screens
/// with ultra-clean styling and smooth behavior. Maintains visual hierarchy
/// with consistent spacing and subtle elements.
///
/// ## Features:
/// - Standard 44px height with SliverAppBar functionality
/// - 17sp title text with w600 weight for clear hierarchy
/// - Clean back arrow icon (18px)
/// - Flexible pinned/floating behavior
/// - Ultra-thin border separation
///
/// ## Usage:
/// ```dart
/// CustomTertiaryAppBarWidget(
///   titleText: "Scrollable Content",
///   pinned: true,
///   floating: false,
/// )
/// ```
class CustomTertiaryAppBarWidget extends StatelessWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final bool centerTitle;
  final double toolbarHeight;
  final bool pinned;
  final bool floating;
  final bool snap;
  final double elevation;
  final String? titleText;
  final bool showBackButton;

  const CustomTertiaryAppBarWidget({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.bottom,
    this.centerTitle = true,
    this.toolbarHeight = 44.0,
    this.pinned = true,
    this.floating = false,
    this.snap = false,
    this.elevation = 0,
    this.titleText,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: showBackButton
          ? IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              iconSize: 18,
            )
          : leading,
      automaticallyImplyLeading: false,
      pinned: pinned,
      floating: floating,
      snap: snap,
      toolbarHeight: toolbarHeight,
      backgroundColor: context.surface,
      surfaceTintColor: context.surface,
      elevation: elevation,
      scrolledUnderElevation: 0,
      centerTitle: centerTitle,
      title: title ??
          Text(
            titleText ?? '',
            style: context.titleMediumW(600),
          ),
      actions: actions,
      bottom: bottom ??
          PreferredSize(
            preferredSize: const Size.fromHeight(0.5),
            child: Container(
              height: 0.33,
              color: context.outline.withValues(alpha: 0.8),
            ),
          ),
    );
  }
}
