import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/shared.dart';

/// A customized AppBar widget with modern minimalist design principles.
///
/// This widget provides a consistent AppBar implementation that follows modern
/// mobile design guidelines with proper height (44px), typography (17sp, w600),
/// and ultra-minimal visual styling. All variations maintain clean aesthetics.
///
/// ## Design Features:
/// - Standard 44px height for optimal mobile experience
/// - 17sp title text with w600 weight for clear hierarchy
/// - 18px icons for optimal touch targets
/// - Zero elevation with optional ultra-thin borders
/// - Centered titles and clean alignment
///
/// ## Basic Usage:
/// ```dart
/// CustomAppBarWidget(
///   title: "Settings",
/// )
/// ```
///
/// ## With Actions:
/// ```dart
/// CustomAppBarWidget(
///   title: "Profile",
///   actions: [
///     IconButton(
///       icon: Icon(Icons.edit),
///       onPressed: () => _editProfile(),
///     ),
///   ],
/// )
/// ```
///
/// ## With Custom Back Action:
/// ```dart
/// CustomAppBarWidget(
///   title: "Details",
///   onBackPressed: () => _customBackAction(),
/// )
/// ```
class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  /// Title text displayed in the AppBar
  final String title;

  /// Whether to center the title text
  final bool centerTitle;

  /// Whether to show the back button
  final bool showBackButton;

  /// Whether to show a bottom border
  final bool showBorder;

  /// Whether to show search action button
  final bool showSearchAction;

  /// Whether to show border around back button
  final bool showBackButtonBorder;

  /// Custom back button action
  final VoidCallback? onBackPressed;

  /// Search button action
  final VoidCallback? onSearchPressed;

  /// Additional action buttons
  final List<Widget>? actions;

  /// Custom leading widget
  final Widget? leading;

  /// Custom background color (overrides theme)
  final Color? backgroundColor;

  /// Custom foreground color (overrides theme)
  final Color? foregroundColor;

  /// Custom elevation (overrides theme)
  final double? elevation;

  /// AppBar height - defaults to modern standard 44px
  final double toolbarHeight;

  const CustomAppBarWidget({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.showBackButton = true,
    this.showBorder = false,
    this.showSearchAction = false,
    this.showBackButtonBorder = false,
    this.onBackPressed,
    this.onSearchPressed,
    this.actions,
    this.leading,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.toolbarHeight = 44.0,
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
              color: context.outline.withValues(alpha: 0.6),
              width: 0.5,
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
          iconSize: 18,
          onPressed: onSearchPressed ?? () {},
        ),
      );
    }
    if (actions != null) {
      appBarActions.addAll(actions!);
    }

    return Container(
      decoration: showBorder
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: context.outline.withValues(alpha: 0.8),
                  width: 0.33,
                ),
              ),
            )
          : null,
      child: AppBar(
        title: Text(
          title,
          style: appBarTheme.titleTextStyle,
        ),
        centerTitle: centerTitle,
        leading: leadingWidget,
        actions: appBarActions.isEmpty ? null : appBarActions,
        backgroundColor: backgroundColor ?? appBarTheme.backgroundColor,
        foregroundColor: foregroundColor ?? appBarTheme.foregroundColor,
        elevation: elevation ?? appBarTheme.elevation,
        toolbarHeight: toolbarHeight,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: appBarTheme.scrolledUnderElevation,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}

/// AppBar with bottom border for visual separation
class CustomAppBarWithBorder extends CustomAppBarWidget {
  const CustomAppBarWithBorder({
    super.key,
    required super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showSearchAction = false,
    super.showBackButtonBorder = false,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.toolbarHeight = 44.0,
  }) : super(showBorder: true);
}

/// AppBar with built-in search action
class CustomAppBarWithSearch extends CustomAppBarWidget {
  const CustomAppBarWithSearch({
    super.key,
    required super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showBorder = false,
    super.showBackButtonBorder = false,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.toolbarHeight = 44.0,
  }) : super(showSearchAction: true);
}

/// AppBar with both border and search action
class CustomAppBarWithBorderAndSearch extends CustomAppBarWidget {
  const CustomAppBarWithBorderAndSearch({
    super.key,
    required super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showBackButtonBorder = false,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.toolbarHeight = 44.0,
  }) : super(showBorder: true, showSearchAction: true);
}

/// AppBar with bordered back button for emphasis
class CustomAppBarWithBackButtonBorder extends CustomAppBarWidget {
  const CustomAppBarWithBackButtonBorder({
    super.key,
    required super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showBorder = false,
    super.showSearchAction = false,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.toolbarHeight = 44.0,
  }) : super(showBackButtonBorder: true);
}

/// AppBar with both border and bordered back button
class CustomAppBarWithBorderAndBackButtonBorder extends CustomAppBarWidget {
  const CustomAppBarWithBorderAndBackButtonBorder({
    super.key,
    required super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showSearchAction = false,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.toolbarHeight = 44.0,
  }) : super(showBorder: true, showBackButtonBorder: true);
}

/// AppBar with search action and bordered back button
class CustomAppBarWithSearchAndBackButtonBorder extends CustomAppBarWidget {
  const CustomAppBarWithSearchAndBackButtonBorder({
    super.key,
    required super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.showBorder = false,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.toolbarHeight = 44.0,
  }) : super(showSearchAction: true, showBackButtonBorder: true);
}

/// AppBar with all available features enabled
class CustomAppBarWithAllFeatures extends CustomAppBarWidget {
  const CustomAppBarWithAllFeatures({
    super.key,
    required super.title,
    super.centerTitle = true,
    super.showBackButton = true,
    super.onBackPressed,
    super.onSearchPressed,
    super.actions,
    super.leading,
    super.backgroundColor,
    super.foregroundColor,
    super.elevation,
    super.toolbarHeight = 44.0,
  }) : super(
            showBorder: true,
            showSearchAction: true,
            showBackButtonBorder: true);
}
