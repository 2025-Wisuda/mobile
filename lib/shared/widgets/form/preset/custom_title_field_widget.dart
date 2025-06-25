import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomTitleFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction textInputAction;
  final String feature;
  final String fieldKey;
  final bool isRequired;

  const CustomTitleFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.textInputAction = TextInputAction.next,
    required this.feature,
    this.fieldKey = 'title',
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldWidget(
      controller: controller,
      focusNode: focusNode,
      labelText: feature.label(fieldKey),
      hintText: feature.hint(fieldKey),
      keyboardType: TextInputType.text,
      textInputAction: textInputAction,
      onChanged: onChanged,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      requiredField: isRequired,
    );
  }
}
