import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomTimeFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String feature;
  final String fieldKey;
  final VoidCallback onTap;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final String? errorText;
  final bool showTimePicker;
  final bool showTimeIcon;
  final bool isRequired;
  final bool readOnly;
  final bool enable;

  const CustomTimeFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.feature,
    required this.fieldKey,
    required this.onTap,
    this.onChanged,
    this.validator,
    this.errorText,
    this.showTimePicker = false,
    this.showTimeIcon = false,
    this.isRequired = true,
    this.readOnly = true,
    this.enable = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AbsorbPointer(
        child: CustomTextFormFieldWidget(
          controller: controller,
          focusNode: focusNode,
          labelText: feature.label(fieldKey),
          hintText: feature.hint(fieldKey),
          keyboardType: TextInputType.datetime,
          errorText: errorText?.isEmpty == true ? null : errorText,
          onChanged: onChanged,
          validator: validator,
          suffixIcon: showTimeIcon ? _buildTimeIcon() : null,
          readOnly: readOnly,
          enabled: enable,
          requiredField: isRequired,
        ),
      ),
    );
  }

  Widget _buildTimeIcon() {
    return const Icon(
      Icons.access_time,
      size: 24,
    );
  }
}
