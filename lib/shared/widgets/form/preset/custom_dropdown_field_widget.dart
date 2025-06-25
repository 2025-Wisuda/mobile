import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomDropdownFieldWidget<T> extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?) onChanged;
  final String? errorText;
  final bool requiredField;
  final bool optional;
  final bool enabled;
  final Widget? prefixIcon;

  const CustomDropdownFieldWidget({
    super.key,
    this.labelText,
    required this.hintText,
    this.value,
    required this.items,
    required this.onChanged,
    this.errorText,
    this.requiredField = true,
    this.optional = false,
    this.enabled = true,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final displayText = value != null
        ? items.firstWhere((item) => item.value == value).child as Text
        : null;

    return CustomTextFormFieldWidget(
      controller: TextEditingController(text: displayText?.data ?? ''),
      focusNode: FocusNode(),
      labelText: labelText,
      hintText: hintText,
      keyboardType: TextInputType.text,
      readOnly: true,
      enabled: enabled,
      requiredField: requiredField,
      optional: optional,
      onTap: () => _showDropdownSelection(context),
      validator: errorText != null ? (_) => errorText : null,
      prefixIcon: prefixIcon,
      suffixIcon: const Icon(Icons.keyboard_arrow_down),
    );
  }

  void _showDropdownSelection(BuildContext context) {
    if (!enabled) return;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: context.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (labelText != null) ...[
              Text(
                labelText!,
                style: context.bodyLargeW(500),
              ),
              const SizedBox(height: 20),
            ],
            ...items.map((item) => _buildOptionTile(context, item)),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTile(BuildContext context, DropdownMenuItem<T> item) {
    final isSelected = value == item.value;

    return InkWell(
      onTap: () {
        Navigator.pop(context);
        onChanged(item.value);
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? context.primary.withValues(alpha: 0.1)
              : context.surface,
          borderRadius: BorderRadius.circular(12),
          border: isSelected
              ? Border.all(color: context.primary, width: 1.0)
              : Border.all(
                  color: context.surfaceContainerHighest,
                  width: 1,
                ),
        ),
        child: Row(
          children: [
            Expanded(
              child: DefaultTextStyle(
                style: context.bodyMediumW(isSelected ? 500 : 400).copyWith(
                      color: isSelected ? context.primary : context.onSurface,
                    ),
                child: item.child,
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check_circle,
                color: context.primary,
                size: 20,
              ),
          ],
        ),
      ),
    );
  }
}
