import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomDateFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String?>? validator;
  final VoidCallback? onTap;
  final TextInputAction textInputAction;
  final String feature;
  final String fieldKey;
  final bool isRequired;
  final bool readOnly;
  final bool showCalendarIcon;

  const CustomDateFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    required this.feature,
    this.fieldKey = 'date',
    this.isRequired = true,
    this.readOnly = true,
    this.showCalendarIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldWidget(
      controller: controller,
      focusNode: focusNode,
      labelText: feature.label(fieldKey),
      hintText: feature.hint(fieldKey),
      keyboardType: TextInputType.datetime,
      textInputAction: textInputAction,
      readOnly: readOnly,
      onChanged: onChanged,
      validator: validator,
      onTap: onTap,
      suffixIcon: showCalendarIcon ? _buildCalendarIcon() : null,
      requiredField: isRequired,
    );
  }

  Widget _buildCalendarIcon() {
    return const Icon(
      Icons.calendar_today,
      size: 24,
    );
  }
}
