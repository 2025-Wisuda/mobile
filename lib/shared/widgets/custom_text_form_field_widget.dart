import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/text_helper.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
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
  final Color? fillColor;

  const CustomTextFormFieldWidget({
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
    this.fillColor,
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
                    TextHelper.note('note'),
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
          cursorColor: context.onSurface,
          enabled: enabled,
          obscureText: obscureText ?? false,
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,
          textInputAction: TextInputAction.done,

          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: fillColor ?? context.shadow,
            errorMaxLines: 4,
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
