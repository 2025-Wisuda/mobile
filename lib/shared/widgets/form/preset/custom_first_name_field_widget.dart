import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomFirstNameFieldWidget extends StatelessWidget {
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

  const CustomFirstNameFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.feature = 'user',
    this.showPersonIcon = false,
    this.textInputAction = TextInputAction.next,
    this.enable = false,
    this.readOnly = true,
    this.isRequired = false,
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
      labelText: feature.label('firstName'),
      hintText: feature.hint('firstName'),
      keyboardType: TextInputType.text,
      enabled: enable,
      prefixIcon: showPersonIcon ? _buildPersonIcon() : null,
      readOnly: readOnly,
      requiredField: isRequired,
    );
  }

  Widget _buildPersonIcon() {
    return const Icon(
      Icons.person_outline,
      size: 24,
    );
  }
}
