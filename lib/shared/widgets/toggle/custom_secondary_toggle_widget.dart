import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/state/state.dart';

class CustomSecondaryToggleWidget extends StatelessWidget {
  final String nameMenu;
  final Color? backgroundColor;
  final String? firstOptionText;
  final String? secondOptionText;
  final Widget? firstOptionIcon;
  final Widget? secondOptionIcon;
  final bool isFirstOptionSelected;
  final VoidCallback onToggle;
  final bool isLoading;
  final bool isRow;
  const CustomSecondaryToggleWidget({
    super.key,
    required this.nameMenu,
    this.firstOptionText,
    this.secondOptionText,
    this.firstOptionIcon,
    this.secondOptionIcon,
    required this.isFirstOptionSelected,
    required this.onToggle,
    this.isLoading = false,
    this.isRow = true,
    this.backgroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: isRow ? Axis.horizontal : Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (nameMenu.isNotEmpty) ...[
          Text(
            nameMenu,
            style: context.labelLarge(),
          ),
          SizedBox(
            width: isRow ? 8 : 0,
            height: isRow ? 0 : 8,
          ),
        ],
        Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? context.shadow,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: context.outline.withValues(alpha: 0.3),
              width: 0.5,
            ),
          ),
          child: Flex(
            direction: isRow ? Axis.horizontal : Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildOption(
                context,
                text: firstOptionText,
                icon: firstOptionIcon,
                isSelected: isFirstOptionSelected,
                onTap: isFirstOptionSelected ? null : onToggle,
                isFirst: true,
              ),
              _buildOption(
                context,
                text: secondOptionText,
                icon: secondOptionIcon,
                isSelected: !isFirstOptionSelected,
                onTap: !isFirstOptionSelected ? null : onToggle,
                isFirst: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOption(
    BuildContext context, {
    required String? text,
    required Widget? icon,
    required bool isSelected,
    required VoidCallback? onTap,
    required bool isFirst,
  }) {
    final borderRadius = isRow
        ? BorderRadius.horizontal(
            left: Radius.circular(isFirst ? 8 : 0),
            right: Radius.circular(isFirst ? 0 : 8),
          )
        : BorderRadius.vertical(
            top: Radius.circular(isFirst ? 8 : 0),
            bottom: Radius.circular(isFirst ? 0 : 8),
          );
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: isLoading ? null : onTap,
        borderRadius: borderRadius,
        child: SizedBox(
          width: isRow ? 132 : 66,
          child: AnimatedContainer(
            width: double.infinity,
            duration: const Duration(milliseconds: 80),
            padding: EdgeInsets.symmetric(
                horizontal: isRow ? 4 : 8, vertical: isSelected ? 8 : 4),
            decoration: BoxDecoration(
              color: isSelected ? context.primary : Colors.transparent,
              borderRadius: borderRadius,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading && isSelected)
                  CustomPrimaryLoadingWidget()
                else ...[
                  icon ?? const SizedBox.shrink(),
                  if (icon != null && text != null && text.isNotEmpty)
                    SizedBox(width: 4),
                  if (text != null && text.isNotEmpty)
                    Text(
                      text,
                      style:
                          context.labelLargeW(isSelected ? 500 : 400).copyWith(
                                color: isSelected
                                    ? context.onPrimary
                                    : context.onSurface.withValues(alpha: 0.8),
                              ),
                    ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
