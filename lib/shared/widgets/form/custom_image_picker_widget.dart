import 'dart:io';

import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomImagePickerWidget extends StatelessWidget {
  final String? selectedImagePath;
  final String? networkImage;
  final bool showNetworkImage;
  final bool hasDeletedNetworkImage;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;
  final String feature;
  final String fieldKey;
  final double height;
  final BorderRadius? borderRadius;

  const CustomImagePickerWidget({
    super.key,
    this.selectedImagePath,
    this.networkImage,
    this.showNetworkImage = false,
    this.hasDeletedNetworkImage = false,
    this.onTap,
    this.onDelete,
    required this.feature,
    this.fieldKey = 'image',
    this.height = 150,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final hasNetworkImage = showNetworkImage == true &&
        networkImage != null &&
        networkImage!.isNotEmpty &&
        !hasDeletedNetworkImage;
    final hasLocalImage = selectedImagePath != null &&
        selectedImagePath!.isNotEmpty &&
        !selectedImagePath!.startsWith('http');

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Text(feature.label(fieldKey), style: context.bodyMedium()),
          LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth;
              Widget imageWidget;

              if (hasLocalImage) {
                imageWidget = _buildLocalImageWidget(context, maxWidth);
              } else if (hasNetworkImage) {
                imageWidget = _buildNetworkImageWidget(context, maxWidth);
              } else {
                imageWidget = _buildPlaceholderWidget(context, maxWidth);
              }

              return Column(children: [imageWidget]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLocalImageWidget(BuildContext context, double maxWidth) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          child: Image.file(
            File(selectedImagePath!),
            height: height,
            width: maxWidth,
            fit: BoxFit.cover,
          ),
        ),
        if (onDelete != null) _buildDeleteButton(context),
      ],
    );
  }

  Widget _buildNetworkImageWidget(BuildContext context, double maxWidth) {
    return Stack(
      children: [
        CustomCardImageWidget(
          imageUrl: networkImage!,
          height: height,
          width: maxWidth,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        if (onDelete != null) _buildDeleteButton(context),
      ],
    );
  }

  Widget _buildPlaceholderWidget(BuildContext context, double maxWidth) {
    final theme = Theme.of(context).inputDecorationTheme;

    return Container(
      height: height,
      width: maxWidth,
      decoration: BoxDecoration(
        border: Border.all(color: theme.fillColor ?? Colors.transparent),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        color: theme.fillColor ?? Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.image, size: 40, color: theme.hintStyle?.color),
          const SizedBox(height: 8),
          Text(
            feature.hint(fieldKey),
            style: context.labelSmallW(500).copyWith(
                color: theme.hintStyle?.color ??
                    context.onSurface.withValues(alpha: 0.5)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDeleteButton(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: context.onSurface.withValues(alpha: 0.8),
        child: IconButton(
          padding: EdgeInsets.zero,
          iconSize: 16,
          icon: Icon(Icons.close, color: context.surface),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
