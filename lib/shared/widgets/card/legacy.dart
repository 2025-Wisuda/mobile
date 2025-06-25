// import 'package:flutter/material.dart';
// import 'package:mobile/shared/extensions/extension.dart';

// /// A flexible, reusable card item widget that provides consistent styling
// /// and behavior across the application. Supports both list and grid layouts.
// ///
// /// Features:
// /// - Consistent modern card design with shadows and borders
// /// - Configurable content layout (Row for list, Column for grid)
// /// - Optional image section with customizable positioning
// /// - Flexible content and trailing sections
// /// - Built-in tap interaction with Material ripple effect
// /// - Responsive design with consistent spacing
// class CustomCardItemWidget extends StatelessWidget {
//   /// The main content widget to display
//   final Widget content;

//   /// Optional image widget to display
//   final Widget? imageWidget;

//   /// Optional trailing widget (e.g., arrow, button)
//   final Widget? trailingWidget;

//   /// Callback function when the card is tapped
//   final VoidCallback? onTap;

//   /// Custom margin around the card
//   final EdgeInsetsGeometry? margin;

//   /// Custom padding inside the card
//   final EdgeInsetsGeometry? padding;

//   /// Card layout direction - Row for list items, Column for grid items
//   final Axis direction;

//   /// Whether to expand the image to fill available space (for grid layouts)
//   final bool expandImage;

//   /// Custom background color
//   final Color? backgroundColor;

//   /// Custom border radius
//   final BorderRadius? borderRadius;

//   /// Custom elevation (shadow intensity)
//   final double elevation;

//   /// Whether to show border
//   final bool showBorder;

//   /// Custom border color
//   final Color? borderColor;

//   /// Space between image and content sections
//   final double? spacing;

//   const CustomCardItemWidget({
//     super.key,
//     required this.content,
//     this.imageWidget,
//     this.trailingWidget,
//     this.onTap,
//     this.margin,
//     this.padding,
//     this.direction = Axis.horizontal, // Row for list items
//     this.expandImage = false,
//     this.backgroundColor,
//     this.borderRadius,
//     this.elevation = 2,
//     this.showBorder = true,
//     this.borderColor,
//     this.spacing,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: margin ?? EdgeInsets.zero,
//       decoration: BoxDecoration(
//         color: backgroundColor ?? context.surface,
//         borderRadius: borderRadius ?? BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: context.shadow.withValues(alpha: 0.08),
//             blurRadius: elevation * 4,
//             offset: Offset(0, elevation),
//           ),
//         ],
//         border: showBorder
//             ? Border.all(
//                 color: borderColor ?? context.shadow,
//                 width: 1,
//               )
//             : null,
//       ),
//       child: Material(
//         color: Colors.transparent,
//         borderRadius: borderRadius ?? BorderRadius.circular(12),
//         child: InkWell(
//           borderRadius: borderRadius ?? BorderRadius.circular(12),
//           onTap: onTap,
//           child: Padding(
//             padding: padding ?? const EdgeInsets.all(12),
//             child: _buildLayout(context),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildLayout(BuildContext context) {
//     if (direction == Axis.horizontal) {
//       // List layout - Row
//       return Row(
//         children: [
//           if (imageWidget != null) ...[
//             imageWidget!,
//             SizedBox(width: spacing ?? 12),
//           ],
//           Expanded(child: content),
//           if (trailingWidget != null) ...[
//             SizedBox(width: spacing ?? 8),
//             trailingWidget!,
//           ],
//         ],
//       );
//     } else {
//       // Grid layout - Column
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (imageWidget != null) ...[
//             expandImage ? Expanded(child: imageWidget!) : imageWidget!,
//             SizedBox(height: spacing ?? 8),
//           ],
//           Expanded(child: content),
//           if (trailingWidget != null) ...[
//             SizedBox(height: spacing ?? 8),
//             trailingWidget!,
//           ],
//         ],
//       );
//     }
//   }
// }
