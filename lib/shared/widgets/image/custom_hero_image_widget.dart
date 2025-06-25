import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class CustomHeroImageWidget extends StatelessWidget {
  final String tagId;
  final String imageUrl;
  final double? height;
  final double? width;
  final double radius;
  final BorderRadius? borderRadius;

  const CustomHeroImageWidget({
    super.key,
    required this.tagId,
    required this.imageUrl,
    this.height,
    this.width,
    this.radius = 8,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveRadius = borderRadius ?? BorderRadius.circular(radius);

    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: effectiveRadius,
        child: Hero(
          tag: tagId,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: width,
            height: height,
            placeholder: (context, url) => _buildPlaceholder(context),
            errorWidget: (context, url, error) => _buildErrorIcon(context),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    return Container(color: Theme.of(context).colorScheme.outline);
  }

  Widget _buildErrorIcon(BuildContext context) {
    // Safe icon size calculation with validation
    double iconSize = 32.0; // Default fallback

    if (width != null && width!.isFinite && width! > 0) {
      iconSize = width! * 0.5;
    } else if (height != null && height!.isFinite && height! > 0) {
      iconSize = height! * 0.5;
    }

    // Clamp to reasonable bounds
    iconSize = iconSize.clamp(16.0, 64.0);

    return Container(
      width: width,
      height: height,
      color: Theme.of(context).colorScheme.outline,
      child: Icon(
        Icons.broken_image,
        size: iconSize,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    );
  }
}
