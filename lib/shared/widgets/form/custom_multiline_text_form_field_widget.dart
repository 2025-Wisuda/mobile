// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/shared/helpers/helper.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [
              Text(labelText!, style: context.bodyMediumW(500)),
              if (optional == true) ...[
                Flexible(
                  child: Text(
                    '(${i18n.tr('general.note.optional')})',
                    style: context
                        .labelMediumW(500)
                        .copyWith(color: context.scrim),
                  ),
                ),
              ],
              if (requiredField == true) ...[
                Flexible(
                  child: Text(
                    '*',
                    style: context
                        .bodyMediumW(500)
                        .copyWith(color: context.error),
                  ),
                ),
              ],
            ],
          ),
        ],
        TextFormField(
          enabled: enabled,
          obscureText: obscureText ?? false,
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,
          textInputAction: TextInputAction.next,
          maxLines: maxLines,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: fillColor ?? context.shadow,
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
