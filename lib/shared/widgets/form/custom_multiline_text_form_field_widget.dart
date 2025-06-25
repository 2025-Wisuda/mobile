import 'package:flutter/material.dart';

import 'package:mobile/shared/widgets/form/form.dart';

/// A customizable multiline TextFormField with modern clean design and flexible styling.
///
/// This widget is designed for multi-line text input (e.g. description, notes) with
/// clean modern aesthetics. Features ultra-thin borders, improved readability,
/// and full parameter-based configuration for various use cases.
///
/// ## Basic Usage:
/// ```dart
/// CustomMultilineTextFormFieldWidget(
///   controller: controller,
///   focusNode: focusNode,
///   hintText: "Enter description...",
///   keyboardType: TextInputType.multiline,
/// )
/// ```
///
/// ## With Label & Validation:
/// ```dart
/// CustomMultilineTextFormFieldWidget(
///   controller: controller,
///   focusNode: focusNode,
///   labelText: "Description",
///   hintText: "Enter details",
///   validator: (value) => value?.isEmpty == true ? "Required" : null,
///   requiredField: true,
///   maxLines: 5,
/// )
/// ```
///
/// ## With Custom Styling:
/// ```dart
/// CustomMultilineTextFormFieldWidget(
///   controller: controller,
///   focusNode: focusNode,
///   hintText: "Type here...",
///   fillColor: Colors.grey[100],
///   prefixIcon: Icon(Icons.notes),
///   suffixIcon: Icon(Icons.check),
///   enabled: false,
///   maxLines: 8,
///   maxLength: 500,
/// )
/// ```
///
/// ## Parameters:
/// - [controller]: TextEditingController for the field (required)
/// - [focusNode]: FocusNode for the field (required)
/// - [keyboardType]: Keyboard type (required)
/// - [hintText]: Hint text inside the field (required)
/// - [labelText]: Optional label above the field
/// - [errorText]: Error text below the field
/// - [prefixIcon], [suffixIcon]: Optional icons
/// - [onChanged]: Value change callback
/// - [validator]: Validation callback
/// - [colorEnabledBorder]: Border color when enabled
/// - [optional]: Show 'optional' label
/// - [requiredField]: Show required indicator
/// - [enabled]: Enable/disable input
/// - [fillColor]: Field background color
/// - [maxLines]: Max lines for input
/// - [maxLength]: Max character count
/// - [obscureText]: Obscure input (e.g. for passwords)
///
class CustomMultilineTextFormFieldWidget extends StatelessWidget {
  final bool? obscureText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final String? labelText;
  final String hintText;
  final String? errorText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Color? colorEnabledBorder;
  final bool optional;
  final bool requiredField;
  final bool enabled;
  final bool isColumn;
  final Color? fillColor;
  final int? maxLines;
  final int? maxLength;

  const CustomMultilineTextFormFieldWidget({
    super.key,
    this.obscureText,
    required this.controller,
    required this.focusNode,
    this.labelText,
    required this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    required this.keyboardType,
    this.onChanged,
    this.validator,
    this.colorEnabledBorder,
    this.optional = false,
    this.requiredField = true,
    this.enabled = true,
    this.isColumn = true,
    this.fillColor,
    this.maxLines,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          CustomFormLabelWidget(
            label: labelText!,
            optional: optional,
            requiredField: requiredField,
          ),
        ],
        TextFormField(
          enabled: enabled,
          obscureText: obscureText ?? false,
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,
          textInputAction: TextInputAction.newline,
          maxLines: maxLines,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: fillColor,
            enabledBorder: colorEnabledBorder != null
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: colorEnabledBorder!),
                  )
                : null,
          ),
          onChanged: onChanged,
          onTapOutside: (PointerDownEvent event) {
            focusNode.unfocus();
          },
          validator: validator,
        ),
      ],
    );
  }
}
