import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomGroupFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final String feature;
  final bool showGroupIcon;
  final TextInputAction textInputAction;
  final bool enable;
  final bool readOnly;
  final bool isRequired;

  const CustomGroupFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.feature = 'user',
    this.showGroupIcon = false,
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
      labelText: feature.label('group'),
      hintText: feature.hint('group'),
      keyboardType: TextInputType.text,
      prefixIcon: showGroupIcon ? _buildGroupIcon() : null,
      enabled: enable,
      readOnly: readOnly,
      requiredField: isRequired,
    );
  }

  Widget _buildGroupIcon() {
    return const Icon(
      Icons.group_outlined,
      size: 24,
    );
  }
}
