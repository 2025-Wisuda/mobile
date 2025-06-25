import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomStudentNumberFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final String feature;
  final bool showStudentNumberIcon;
  final TextInputAction textInputAction;
  final bool enable;
  final bool readOnly;
  final bool isRequired;

  const CustomStudentNumberFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.feature = 'user',
    this.showStudentNumberIcon = false,
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
      labelText: feature.label('studentNumber'),
      hintText: feature.hint('studentNumber'),
      keyboardType: TextInputType.text,
      prefixIcon: showStudentNumberIcon ? _buildStudentIcon() : null,
      enabled: enable,
      readOnly: readOnly,
      requiredField: isRequired,
    );
  }

  Widget _buildStudentIcon() {
    return const Icon(
      Icons.school_outlined,
      size: 24,
    );
  }
}
