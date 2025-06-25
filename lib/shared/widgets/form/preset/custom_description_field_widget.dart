import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomDescriptionFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction textInputAction;
  final String feature;
  final String fieldKey;
  final bool isRequired;
  final int maxLines;
  final int? maxLength;

  const CustomDescriptionFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.textInputAction = TextInputAction.next,
    required this.feature,
    this.fieldKey = 'description',
    this.isRequired = false,
    this.maxLines = 4,
    this.maxLength = 100,
  });

  @override
  Widget build(BuildContext context) {
    return CustomMultilineTextFormFieldWidget(
      controller: controller,
      focusNode: focusNode,
      labelText: feature.label(fieldKey),
      hintText: feature.hint(fieldKey),
      keyboardType: TextInputType.multiline,
      maxLines: maxLines,
      maxLength: maxLength,
      requiredField: isRequired,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
