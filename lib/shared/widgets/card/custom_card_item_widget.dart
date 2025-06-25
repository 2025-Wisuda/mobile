import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

/// A flexible, reusable card item widget that provides consistent styling
/// and behavior across the application. Supports both list and grid layouts.
///
/// **Features:**
/// - Consistent modern card design with shadows and borders
/// - Configurable content layout (Row for list, Column for grid)
/// - Optional leading section (image, icon, avatar, etc.)
/// - Flexible main content section
/// - Optional trailing section (arrow, badge, button)
/// - Built-in tap interaction with Material ripple effect
/// - Responsive design with consistent spacing
///
/// **Usage Examples:**
/// ```dart
/// // List-style card (Course/Lab/Duty items)
/// CustomCardItemWidget(
///   onTap: () => navigateToDetail(),
///   leadingSection: CircleAvatar(...),
///   mainContent: Column(
///     children: [
///       Text('Title'),
///       Text('Subtitle'),
///       CardSectionHelpers.metadataRow(context,
///         icon: Icons.schedule, text: '2h 30m'),
///     ],
///   ),
///   trailingSection: CardSectionHelpers.trailingArrow(context),
/// )
///
/// // Status badge with icon
/// CardSectionHelpers.statusBadge(context,
///   icon: Icons.check_circle,
///   label: 'Done',
///   backgroundColor: Colors.green,
///   textColor: Colors.white,
/// )
///
/// // Status badge without icon (text only)
/// CardSectionHelpers.statusBadge(context,
///   label: 'Processing',
///   backgroundColor: Colors.blue,
///   textColor: Colors.white,
/// )
///
/// // Metadata with icon
/// CardSectionHelpers.metadataRow(context,
///   icon: Icons.calendar_today,
///   text: 'Today',
/// )
///
/// // Metadata without icon (text only)
/// CardSectionHelpers.metadataRow(context,
///   text: 'No icon needed',
/// )
/// ```
class CustomCardItemWidget extends StatelessWidget {
  /// The main content widget to display
  final Widget mainContent;

  /// Optional leading widget (image, icon, avatar, etc.)
  final Widget? leadingSection;

  /// Optional trailing widget (arrow, badge, button)
  final Widget? trailingSection;

  /// Callback function when the card is tapped
  final VoidCallback? onTap;

  /// Card layout direction
  final CardLayout layout;

  /// Custom margin around the card
  final EdgeInsetsGeometry? margin;

  /// Custom padding inside the card
  final EdgeInsetsGeometry? padding;

  /// Custom background color
  final Color? backgroundColor;

  /// Custom border radius
  final BorderRadius? borderRadius;

  /// Custom elevation (shadow intensity)
  final double elevation;

  /// Whether to show border
  final bool showBorder;

  /// Custom border color
  final Color? borderColor;

  /// Space between sections
  final double spacing;

  /// Whether to expand the main content section
  final bool expandMainContent;

  /// Alignment for leading section in row layout
  final CrossAxisAlignment leadingAlignment;

  const CustomCardItemWidget({
    super.key,
    required this.mainContent,
    this.leadingSection,
    this.trailingSection,
    this.onTap,
    this.layout = CardLayout.row,
    this.margin,
    this.padding,
    this.backgroundColor,
    this.borderRadius,
    this.elevation = 0,
    this.showBorder = false,
    this.borderColor,
    this.spacing = 16,
    this.expandMainContent = true,
    this.leadingAlignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.surfaceContainerLow,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        boxShadow: elevation > 0
            ? [
                BoxShadow(
                  color: context.shadow.withValues(alpha: 0.04),
                  blurRadius: 6,
                  offset: const Offset(0, 1),
                ),
              ]
            : null,
        border: showBorder
            ? Border.all(
                color: borderColor ?? context.outline.withValues(alpha: 0.6),
                width: 0.33,
              )
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        child: InkWell(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          onTap: onTap,
          child: Padding(
            padding: padding ?? const EdgeInsets.all(16),
            child: _buildContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    switch (layout) {
      case CardLayout.row:
        return _buildRowLayout();
      case CardLayout.column:
        return _buildColumnLayout();
    }
  }

  Widget _buildRowLayout() {
    return Row(
      crossAxisAlignment: leadingAlignment,
      children: [
        if (leadingSection != null) ...[
          leadingSection!,
          SizedBox(width: spacing),
        ],
        if (expandMainContent) Expanded(child: mainContent) else mainContent,
        if (trailingSection != null) ...[
          SizedBox(width: spacing),
          trailingSection!,
        ],
      ],
    );
  }

  Widget _buildColumnLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (leadingSection != null) ...[
          leadingSection!,
          SizedBox(height: spacing),
        ],
        if (expandMainContent) Expanded(child: mainContent) else mainContent,
        if (trailingSection != null) ...[
          SizedBox(height: spacing),
          trailingSection!,
        ],
      ],
    );
  }
}

/// Card layout direction enum
enum CardLayout {
  /// Horizontal layout (Row) - typically for list items
  row,

  /// Vertical layout (Column) - typically for grid items
  column,
}

/// Status badge size configurations following Material Design accessibility guidelines
enum StatusBadgeSize {
  /// Small size for dense layouts - minimum 24dp touch target
  small,

  /// Medium size for standard use - recommended 32dp touch target
  medium,

  /// Large size for emphasis and accessibility - 40dp+ touch target
  large,
}

/// Metadata size configurations for different use cases
enum MetadataSize {
  /// Small size for compact layouts
  small,

  /// Medium size for standard readability
  medium,

  /// Large size for enhanced accessibility
  large,

  /// Extra large size for enhanced accessibility
  extraLarge,
}

/// Configuration class for status badge sizing
class _StatusBadgeConfig {
  final double paddingHorizontal;
  final double paddingVertical;
  final double iconSize;
  final double iconSpacing;
  final double borderRadius;
  final double minHeight;
  final double minWidth;
  final FontWeight fontWeight;

  const _StatusBadgeConfig({
    required this.paddingHorizontal,
    required this.paddingVertical,
    required this.iconSize,
    required this.iconSpacing,
    required this.borderRadius,
    required this.minHeight,
    required this.minWidth,
    required this.fontWeight,
  });
}

/// Configuration class for metadata sizing
class _MetadataConfig {
  final double iconSize;
  final double iconSpacing;
  final FontWeight fontWeight;

  const _MetadataConfig({
    required this.iconSize,
    required this.iconSpacing,
    required this.fontWeight,
  });
}

/// Helper widgets for common card sections
class CardSectionHelpers {
  /// Creates a standard trailing arrow icon (Apple-style chevron)
  static Widget trailingArrow(BuildContext context, {double size = 20}) {
    return Icon(
      Icons.chevron_right,
      size: size,
      color: context.onSurfaceVariant,
    );
  }

  /// Creates a status badge with optional icon and text
  /// Follows Material Design 3 guidelines for accessibility and readability
  static Widget statusBadge(
    BuildContext context, {
    IconData? icon,
    required String label,
    required Color backgroundColor,
    required Color textColor,
    StatusBadgeSize size = StatusBadgeSize.medium,
  }) {
    // Get configuration based on size
    final config = _getStatusBadgeConfig(size);

    // Use appropriate text style based on size
    TextStyle textStyle;
    switch (size) {
      case StatusBadgeSize.small:
        textStyle = context.labelSmall().copyWith(
              fontWeight: config.fontWeight,
              color: textColor,
              height: 1.2,
            );
        break;
      case StatusBadgeSize.medium:
        textStyle = context.labelMedium().copyWith(
              fontWeight: config.fontWeight,
              color: textColor,
              height: 1.2,
            );
        break;
      case StatusBadgeSize.large:
        textStyle = context.labelLarge().copyWith(
              fontWeight: config.fontWeight,
              color: textColor,
              height: 1.2,
            );
        break;
    }

    return Container(
      constraints: BoxConstraints(
        minHeight: config.minHeight,
        minWidth: config.minWidth,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: config.paddingHorizontal,
        vertical: config.paddingVertical,
      ),
      decoration: BoxDecoration(
        color: backgroundColor.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(config.borderRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, size: config.iconSize, color: textColor),
            SizedBox(width: config.iconSpacing),
          ],
          Text(label, style: textStyle),
        ],
      ),
    );
  }

  /// Creates a metadata row with optional icon and text
  /// Optimized for readability with proper spacing and sizing
  static Widget metadataRow(
    BuildContext context, {
    IconData? icon,
    required String text,
    MetadataSize size = MetadataSize.medium,
  }) {
    final config = _getMetadataConfig(size);

    // Use appropriate text style based on size
    TextStyle textStyle;
    switch (size) {
      case MetadataSize.small:
        textStyle = context.labelSmall().copyWith(
              fontWeight: config.fontWeight,
              color: context.onSurfaceVariant,
              height: 1.3,
            );
        break;
      case MetadataSize.medium:
        textStyle = context.labelMedium().copyWith(
              fontWeight: config.fontWeight,
              color: context.onSurfaceVariant,
              height: 1.3,
            );
        break;
      case MetadataSize.large:
        textStyle = context.labelLarge().copyWith(
              fontWeight: config.fontWeight,
              color: context.onSurfaceVariant,
              height: 1.3,
            );
        break;
      case MetadataSize.extraLarge:
        textStyle = context.bodyMedium().copyWith(
              fontWeight: config.fontWeight,
              color: context.onSurfaceVariant,
              height: 1.3,
            );
        break;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null) ...[
          Icon(
            icon,
            size: config.iconSize,
            color: context.onSurfaceVariant,
          ),
          SizedBox(width: config.iconSpacing),
        ],
        Text(
          text,
          style: textStyle,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  /// Creates a title and subtitle column
  static Widget titleSubtitle(
    BuildContext context, {
    required String title,
    String? subtitle,
    int titleMaxLines = 1,
    int subtitleMaxLines = 1,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: titleStyle ?? context.titleMediumW(600),
          maxLines: titleMaxLines,
          overflow: TextOverflow.ellipsis,
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: subtitleStyle ??
                context.labelSmallW(400).copyWith(
                      color: context.onSurfaceVariant,
                    ),
            maxLines: subtitleMaxLines,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ],
    );
  }

  /// Get status badge configuration based on size following Material Design 3 guidelines
  static _StatusBadgeConfig _getStatusBadgeConfig(StatusBadgeSize size) {
    switch (size) {
      case StatusBadgeSize.small:
        return const _StatusBadgeConfig(
          paddingHorizontal: 8, // Sufficient padding for touch
          paddingVertical: 4, // Better visual balance
          iconSize: 14, // Proportional icon
          iconSpacing: 4, // Clear separation
          borderRadius: 6, // Soft rounded corners
          minHeight: 24, // Minimum touch target
          minWidth: 32, // Adequate width
          fontWeight: FontWeight.w500, // Medium weight for clarity
        );
      case StatusBadgeSize.medium:
        return const _StatusBadgeConfig(
          paddingHorizontal: 12, // Comfortable padding
          paddingVertical: 6, // Good vertical spacing
          iconSize: 16, // Clear icon visibility
          iconSpacing: 6, // Better spacing
          borderRadius: 8, // Modern rounded look
          minHeight: 32, // Recommended touch target
          minWidth: 40, // Better usability
          fontWeight: FontWeight.w500, // Good contrast
        );
      case StatusBadgeSize.large:
        return const _StatusBadgeConfig(
          paddingHorizontal: 16, // Generous padding
          paddingVertical: 8, // Better accessibility
          iconSize: 18, // Clear icon
          iconSpacing: 8, // Good separation
          borderRadius: 10, // Premium look
          minHeight: 40, // Accessibility standard
          minWidth: 48, // Easy interaction
          fontWeight: FontWeight.w600, // Strong emphasis
        );
    }
  }

  /// Get metadata configuration based on size for optimal readability
  static _MetadataConfig _getMetadataConfig(MetadataSize size) {
    switch (size) {
      case MetadataSize.small:
        return const _MetadataConfig(
          iconSize: 14, // Proportional icon
          iconSpacing: 4, // Clear separation
          fontWeight: FontWeight.w500, // Regular weight
        );
      case MetadataSize.medium:
        return const _MetadataConfig(
          iconSize: 16, // Good visibility
          iconSpacing: 6, // Better spacing
          fontWeight: FontWeight.w500, // Regular weight
        );
      case MetadataSize.large:
        return const _MetadataConfig(
          iconSize: 18, // Clear icon
          iconSpacing: 8, // Generous spacing
          fontWeight: FontWeight.w500, // Medium weight for emphasis
        );
      case MetadataSize.extraLarge:
        return const _MetadataConfig(
          iconSize: 16, // Clear icon
          iconSpacing: 4, // Generous spacing
          fontWeight: FontWeight.w500, // Medium weight for emphasis
        );
    }
  }
}
