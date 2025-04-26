import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
  final bool isColumn;

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
    this.isColumn = true,
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
              Text(
                labelText!,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),

              if (optional == true) ...[
                Flexible(
                  child: Text(
                    '(${'general.note.optional'.tr()})',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.scrim,
                    ),
                  ),
                ),
              ],
              if (requiredField == true) ...[
                Flexible(
                  child: Text(
                    '*',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
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
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
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
