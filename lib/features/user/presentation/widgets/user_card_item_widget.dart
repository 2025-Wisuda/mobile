import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UserCardItemWidget extends StatelessWidget {
  final String name;
  final String? subtitle;
  final String? imageUrl;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool showBorder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const UserCardItemWidget({
    super.key,
    required this.name,
    this.subtitle,
    this.imageUrl,
    this.trailing,
    this.onTap,
    this.showBorder = false,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
        onTap: onTap,
        leadingSection: CustomProfilePictureWidget(
          imageUrl: imageUrl ?? '',
          firstName: name,
          lastName: '',
          username: '',
        ),
        mainContent: _buildMainContent(context),
        trailingSection: trailing,
        showBorder: false,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: margin ?? EdgeInsets.zero,
        elevation: 0,
        backgroundColor: Colors.transparent);
  }

  Widget _buildMainContent(BuildContext context) {
    return CardSectionHelpers.titleSubtitle(
      context,
      title: name,
      titleMaxLines: 2,
      titleStyle: context.bodyMediumW(500),
      subtitle: subtitle,
      subtitleMaxLines: 1,
      subtitleStyle: context.bodyMediumW(400).copyWith(
            color: context.onSurface.withValues(alpha: 0.7),
          ),
    );
  }
}
