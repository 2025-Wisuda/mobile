import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/text_helper.dart';

/// A customized form label widget that provides consistent labeling with optional and required field indicators.
///
/// This widget creates a standardized way to display form labels with proper typography hierarchy
/// and visual indicators for field requirements. It's designed to work seamlessly with form
/// components while maintaining visual consistency across the application.
///
/// ## Design Principles:
/// - Uses consistent typography hierarchy with `labelLarge` for main text
/// - Provides visual indicators for optional and required fields
/// - Maintains proper spacing and alignment
/// - Supports dynamic theming and accessibility
///
/// ## Basic Usage:
/// ```dart
/// CustomFormLabelWidget(
///   label: "Full Name",
///   requiredField: true,
/// )
/// ```
///
/// ## Optional Field:
/// ```dart
/// CustomFormLabelWidget(
///   label: "Middle Name",
///   optional: true,
///   requiredField: false,
/// )
/// ```
///
/// ## Required Field (Default):
/// ```dart
/// CustomFormLabelWidget(
///   label: "Email Address",
///   // requiredField defaults to true
/// )
/// ```
///
/// ## Visual Elements:
/// - **Main Label**: Uses `labelLarge` (14sp, w500) for optimal readability
/// - **Required Indicator**: Red asterisk (*) using `labelSmall` with error color
/// - **Optional Note**: Subdued text using `labelSmall` with reduced opacity
/// - **Spacing**: 4px between elements for clean visual separation
///
/// ## Accessibility:
/// - Proper semantic structure with Row layout
/// - Color contrast meets accessibility standards
/// - Text scaling respects system font size preferences
/// - Clear visual hierarchy for screen readers
///
/// ## Integration with Forms:
/// This label widget is designed to be used above form input fields:
/// ```dart
/// Column(
///   crossAxisAlignment: CrossAxisAlignment.start,
///   children: [
///     CustomFormLabelWidget(
///       label: "Email",
///       requiredField: true,
///     ),
///     const SizedBox(height: 8),
///     CustomTextFormFieldWidget(
///       controller: emailController,
///       hintText: "Enter your email",
///     ),
///   ],
/// )
/// ```
class CustomFormLabelWidget extends StatelessWidget {
  /// The main text to display as the label
  final String label;

  /// Whether to show an "(Optional)" note after the label
  ///
  /// When true, displays a subdued note indicating the field is optional.
  /// This helps users understand which fields they can skip.
  final bool optional;

  /// Whether to show a required field indicator (red asterisk)
  ///
  /// When true (default), displays a red asterisk (*) to indicate
  /// that the field is required for form submission.
  final bool requiredField;

  const CustomFormLabelWidget({
    super.key,
    required this.label,
    this.optional = false,
    this.requiredField = true,
  }) : assert(
          !(requiredField && optional),
          'A field cannot be both required and optional at the same time. '
          'Set either requiredField: false with optional: true, or requiredField: true with optional: false.',
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Main label text
        Text(
          label,
          style: context.labelLarge(),
        ),

        // Consistent spacing between elements
        const SizedBox(width: 4),

        // Optional field indicator
        if (optional) ...[
          Flexible(
            child: Text(
              '(${TextHelper.note('optional')})',
              style: context.labelSmall().copyWith(
                    color: context.onSurface.withValues(alpha: 0.6),
                  ),
            ),
          ),
        ],

        // Required field indicator
        if (requiredField) ...[
          Flexible(
            child: Text(
              '*',
              style: context.labelSmall().copyWith(
                    color: context.error,
                  ),
            ),
          ),
        ],
      ],
    );
  }
}
