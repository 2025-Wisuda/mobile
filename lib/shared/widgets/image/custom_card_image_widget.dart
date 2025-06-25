import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class CustomCardImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? radiusImage;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;

  const CustomCardImageWidget({
    super.key,
    required this.imageUrl,
    this.radiusImage,
    this.borderRadius,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final double size = radiusImage ?? 56.0;
    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? BorderRadius.circular(size * 0.2);

    if (imageUrl.isEmpty) {
      return SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          borderRadius: effectiveBorderRadius,
          child: _buildErrorIcon(context, size),
        ),
      );
    }

    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: effectiveBorderRadius,
        child: Hero(
          tag: imageUrl,
          child: CachedNetworkImage(
            cacheKey: imageUrl,
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => _buildPlaceholder(context),
            errorWidget: (context, url, error) =>
                _buildErrorIcon(context, size),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    return Container(color: Theme.of(context).colorScheme.surface);
  }

  Widget _buildErrorIcon(BuildContext context, double size) {
    return Center(
      child: Icon(
        Icons.broken_image,
        size: size,
        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
      ),
    );
  }
}
