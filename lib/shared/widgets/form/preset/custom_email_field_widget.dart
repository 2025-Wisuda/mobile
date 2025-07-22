import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomEmailFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final String feature;
  final bool showEmailIcon;
  final TextInputAction textInputAction;
  final bool enable;
  final bool readOnly;
  final bool isRequired;

  const CustomEmailFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.feature = 'user',
    this.showEmailIcon = false,
    this.textInputAction = TextInputAction.next,
    this.enable = true,
    this.readOnly = false,
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
      labelText: feature.label('email'),
      hintText: feature.hint('email'),
      keyboardType: TextInputType.text,
      prefixIcon: showEmailIcon ? _buildEmailIcon() : null,
      enabled: enable,
      readOnly: readOnly,
      requiredField: isRequired,
    );
  }

  Widget _buildEmailIcon() {
    return const Icon(
      Icons.email_outlined,
      size: 24,
    );
  }
}
