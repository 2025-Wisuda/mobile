import 'package:flutter/material.dart';

/// A navigation-style search bar tile that mimics the appearance of a SearchBar but acts as a tappable navigation trigger.
///
/// This widget is useful for cases where you want to show a search field UI that, when tapped, navigates to a dedicated search page or opens a search dialog.
///
/// All visual styling (background, shape, text, shadow, etc) is inherited from the current [SearchBarThemeData] for consistency with other search bars in the app.
///
/// ## Basic Usage:
/// ```dart
/// CustomSearchNavigationWidget(
///   hintText: "Search...",
///   onTap: () => Navigator.push(...),
/// )
/// ```
///
/// ## With Leading Icon:
/// ```dart
/// CustomSearchNavigationWidget(
///   hintText: "Search for items",
///   leading: Icon(Icons.search),
///   onTap: () => showSearch(...),
/// )
/// ```
///
/// ## Theming:
/// - Uses [SearchBarThemeData] from the current theme for background, shape, text style, shadow, and overlay color.
/// - The [hintText] is styled using the theme's hintStyle.
/// - The [leading] widget (if provided) is shown at the start of the tile.
///
/// ## Parameters:
/// - [hintText]: The text to display as a hint in the tile.
/// - [onTap]: Callback when the tile is tapped.
/// - [leading]: Optional widget to display at the start (e.g. an icon).
class CustomSearchNavigationWidget extends StatelessWidget {
  final String hintText;
  final VoidCallback onTap;
  final Widget? leading;

  const CustomSearchNavigationWidget({
    super.key,
    required this.hintText,
    required this.onTap,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final searchTheme = theme.searchBarTheme;

    final states = <WidgetState>{};

    final bgColor = searchTheme.backgroundColor?.resolve(states);
    final overlayColor = searchTheme.overlayColor?.resolve(states);
    final shape = searchTheme.shape?.resolve(states);
    final textStyle = searchTheme.hintStyle?.resolve(states);
    final shadowColor = searchTheme.shadowColor?.resolve(states);
    final surfaceTintColor = searchTheme.surfaceTintColor?.resolve(states);

    return Material(
      color: bgColor,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      shape: shape,
      child: InkWell(
        borderRadius: _resolveBorderRadius(shape),
        splashColor: overlayColor,
        highlightColor: overlayColor,
        onTap: onTap,
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (leading != null) ...[
                leading!,
                const SizedBox(width: 8),
              ],
              Expanded(
                child: Text(
                  hintText,
                  style: textStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BorderRadius? _resolveBorderRadius(ShapeBorder? shape) {
    if (shape is RoundedRectangleBorder) {
      return shape.borderRadius as BorderRadius?;
    }
    return null;
  }
}
