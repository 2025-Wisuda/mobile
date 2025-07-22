import 'package:flutter/material.dart';

import 'package:mobile/shared/widgets/widget.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final bool readOnly;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const CustomTextFieldWidget({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.readOnly = false,
    this.suffixIcon,
    this.onTap,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldWidget(
      controller: controller,
      focusNode: FocusNode(),
      labelText: labelText,
      hintText: hintText ?? '',
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTap: onTap,
      validator: validator,
      onChanged: onChanged,
      suffixIcon: suffixIcon,
    );
  }
}
