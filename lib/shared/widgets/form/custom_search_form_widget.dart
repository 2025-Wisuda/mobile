import 'package:flutter/material.dart';
import 'package:mobile/shared/helpers/helper.dart';

class CustomSearchFormWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final String hintText;
  final Widget? leadingIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final Iterable<Widget>? trailingIcon;
  final bool autoFocus;
  final double? borderRadius;
  final Color? borderColor;
  final Color? backgroundColor;

  const CustomSearchFormWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.leadingIcon,
    required this.keyboardType,
    this.onChanged,
    this.onFieldSubmitted,
    this.trailingIcon,
    this.autoFocus = false,
    this.borderRadius,
    this.borderColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 44,
        child: ValueListenableBuilder(
          valueListenable: controller,
          builder: (context, TextEditingValue value, _) {
            return SearchBar(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 12),
                  side: BorderSide(
                    color: borderColor ?? context.color.onSurface,
                  ),
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(
                backgroundColor ?? context.color.surface,
              ),
              autoFocus: autoFocus,
              onTapOutside: (PointerDownEvent event) {
                focusNode.unfocus();
              },
              controller: controller,
              focusNode: focusNode,
              keyboardType: keyboardType,
              textInputAction: TextInputAction.done,
              hintText: hintText,
              leading: leadingIcon,
              onChanged: onChanged,
              onSubmitted: onFieldSubmitted,
              trailing: value.text.isNotEmpty ? trailingIcon?.toList() : null,
            );
          },
        ),
      ),
    );
  }
}
