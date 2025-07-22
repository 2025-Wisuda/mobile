import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/shared.dart';

/// A customized SliverAppBar widget with modern minimalist design.
///
/// This widget provides a consistent SliverAppBar implementation for scrollable content
/// with flexible behavior and ultra-clean styling. Maintains visual hierarchy
/// with consistent spacing and subtle elements.
///
/// ## Features:
/// - Standard 44px height for toolbar
/// - 17sp title text with w600 weight for clear hierarchy
/// - Clean back arrow and search icons (18px)
/// - Flexible pinned/floating/snap behavior
/// - Ultra-thin border separation
///
/// ## Usage:
/// ```dart
/// CustomSliverAppBarWidget(
///   title: "Scrollable Page",
///   pinned: true,
///   expandedHeight: 200,
/// )
/// ```
class CustomSliverAppBarWidget extends StatelessWidget {
  final String? title;
  final bool centerTitle;
  final bool showBackButton;
  final bool showBorder;
  final bool showSearchAction;
  final bool showBackButtonBorder;
  final bool pinned;
  final bool floating;
  final bool snap;
  final double expandedHeight;
  final double toolbarHeight;
  final VoidCallback? onBackPressed;
  final VoidCallback? onSearchPressed;
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final bool stretch;

  const CustomSliverAppBarWidget({
    super.key,
    this.title,
    this.centerTitle = true,
    this.showBackButton = true,
    this.showBorder = false,
    this.showSearchAction = false,
    this.showBackButtonBorder = false,
    this.pinned = true,
    this.floating = false,
    this.snap = false,
    this.expandedHeight = 200.0,
    this.toolbarHeight = 44.0,
    this.onBackPressed,
    this.onSearchPressed,
    this.actions,
    this.leading,
    this.flexibleSpace,
    this.bottom,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.stretch = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appBarTheme = theme.appBarTheme;

    Widget? leadingWidget;
    if (leading != null) {
      leadingWidget = leading;
    } else if (showBackButton) {
      if (showBackButtonBorder) {
        leadingWidget = Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: context.outline.withValues(alpha: 0.8),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            iconSize: 18,
            onPressed: onBackPressed ?? () => Get.back(),
          ),
        );
      } else {
        leadingWidget = IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          iconSize: 18,
          onPressed: onBackPressed ?? () => Get.back(),
        );
      }
    }

    List<Widget>? appBarActions = [];
    if (showSearchAction) {
      appBarActions.add(
        IconButton(
          icon: const Icon(Icons.search_rounded),
          iconSize: 20,
          onPressed: onSearchPressed ?? () {},
        ),
      );
    }
    if (actions != null) {
      appBarActions.addAll(actions!);
    }

    Widget sliverAppBar = SliverAppBar(
      title: title != null
          ? Text(
              title!,
              style: appBarTheme.titleTextStyle,
            )
          : null,
      centerTitle: centerTitle,
      leading: leadingWidget,
      actions: appBarActions.isEmpty ? null : appBarActions,
      backgroundColor: backgroundColor ?? appBarTheme.backgroundColor,
      foregroundColor: foregroundColor ?? appBarTheme.foregroundColor,
      elevation: elevation ?? appBarTheme.elevation,
      scrolledUnderElevation: appBarTheme.scrolledUnderElevation,
      toolbarHeight: toolbarHeight,
      expandedHeight: expandedHeight,
      pinned: pinned,
      floating: floating,
      snap: snap,
      stretch: stretch,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      automaticallyImplyLeading: false,
    );

    if (showBorder) {
      return SliverToBoxAdapter(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: context.outline.withValues(alpha: 0.8),
                width: 0.33,
              ),
            ),
          ),
          child: Material(
            child: SizedBox(
              height: toolbarHeight,
              child: AppBar(
                title: title != null
                    ? Text(
                        title!,
                        style: appBarTheme.titleTextStyle,
                      )
                    : null,
                centerTitle: centerTitle,
                leading: leadingWidget,
                actions: appBarActions.isEmpty ? null : appBarActions,
                backgroundColor: backgroundColor ?? appBarTheme.backgroundColor,
                foregroundColor: foregroundColor ?? appBarTheme.foregroundColor,
                elevation: 0,
                scrolledUnderElevation: 0,
                bottom: bottom,
                automaticallyImplyLeading: false,
              ),
            ),
          ),
        ),
      );
    }

    return sliverAppBar;
  }
}

/// SliverAppBar with bottom border for visual separation
class CustomSliverAppBarWithBorder extends CustomSliverAppBarWidget {
  const CustomSliverAppBarWithBorder({
    super.key,
    super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showSearchAction = false,
    super.showBackButtonBorder = false,
    super.pinned = true,
    super.floating = false,
    super.snap = false,
    super.expandedHeight = 200.0,
    super.toolbarHeight = 44.0,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.flexibleSpace,
    super.bottom,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.stretch = false,
  }) : super(showBorder: true);
}

class CustomSliverAppBarWithSearch extends CustomSliverAppBarWidget {
  const CustomSliverAppBarWithSearch({
    super.key,
    super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showBorder = false,
    super.showBackButtonBorder = false,
    super.pinned = true,
    super.floating = false,
    super.snap = false,
    super.expandedHeight = 200.0,
    super.toolbarHeight = 56.0,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.flexibleSpace,
    super.bottom,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.stretch = false,
  }) : super(showSearchAction: true);
}

class CustomSliverAppBarWithBorderAndSearch extends CustomSliverAppBarWidget {
  const CustomSliverAppBarWithBorderAndSearch({
    super.key,
    super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showBackButtonBorder = false,
    super.pinned = true,
    super.floating = false,
    super.snap = false,
    super.expandedHeight = 200.0,
    super.toolbarHeight = 56.0,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.flexibleSpace,
    super.bottom,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.stretch = false,
  }) : super(showBorder: true, showSearchAction: true);
}

class CustomSliverAppBarCollapsible extends CustomSliverAppBarWidget {
  const CustomSliverAppBarCollapsible({
    super.key,
    super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showBorder = false,
    super.showSearchAction = false,
    super.showBackButtonBorder = false,
    super.floating = true,
    super.snap = true,
    super.expandedHeight = 200.0,
    super.toolbarHeight = 56.0,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.flexibleSpace,
    super.bottom,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.stretch = true,
  }) : super(pinned: false);
}

class CustomSliverAppBarWithBackButtonBorder extends CustomSliverAppBarWidget {
  const CustomSliverAppBarWithBackButtonBorder({
    super.key,
    super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showBorder = false,
    super.showSearchAction = false,
    super.pinned = true,
    super.floating = false,
    super.snap = false,
    super.expandedHeight = 200.0,
    super.toolbarHeight = 56.0,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.flexibleSpace,
    super.bottom,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.stretch = false,
  }) : super(showBackButtonBorder: true);
}

class CustomSliverAppBarWithAllFeatures extends CustomSliverAppBarWidget {
  const CustomSliverAppBarWithAllFeatures({
    super.key,
    super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.pinned = true,
    super.floating = false,
    super.snap = false,
    super.expandedHeight = 200.0,
    super.toolbarHeight = 56.0,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.flexibleSpace,
    super.bottom,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.stretch = false,
  }) : super(
            showBorder: true,
            showSearchAction: true,
            showBackButtonBorder: true);
}
