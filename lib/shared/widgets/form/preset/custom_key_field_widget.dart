import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomKeyFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final String feature;
  final bool showPersonIcon;
  final TextInputAction textInputAction;
  final bool enable;
  final bool readOnly;
  final bool isRequired;
  final String fieldKey;

  const CustomKeyFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.feature = 'course',
    this.showPersonIcon = false,
    this.textInputAction = TextInputAction.done,
    this.enable = true,
    this.readOnly = false,
    this.isRequired = false,
    this.fieldKey = 'enrollKey',
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldWidget(
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      labelText: feature.label(fieldKey),
      hintText: feature.hint(fieldKey),
      keyboardType: TextInputType.text,
      enabled: enable,
      prefixIcon: showPersonIcon ? _buildKeyIcon() : null,
      readOnly: readOnly,
      requiredField: isRequired,
    );
  }

  Widget _buildKeyIcon() {
    return const Icon(
      Icons.key,
      size: 24,
    );
  }
}
