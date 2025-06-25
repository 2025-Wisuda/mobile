import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomProfilePictureWidget extends StatelessWidget {
  final String imageUrl;
  final double? radiusImage;
  final String firstName;
  final String lastName;
  final String username;
  final VoidCallback? onTap;

  const CustomProfilePictureWidget({
    super.key,
    required this.imageUrl,
    this.radiusImage,
    required this.firstName,
    required this.lastName,
    required this.username,
    this.onTap,
  });

  String _getInitials() {
    final fn = firstName.trim();
    final ln = lastName.trim();
    final un = username.trim();
    String result;

    if (fn.isNotEmpty && ln.isNotEmpty) {
      result = '${fn[0]}${ln[0]}';
    } else if (fn.length >= 2) {
      result = fn.substring(0, 2);
    } else if (fn.isNotEmpty) {
      result = fn[0];
    } else if (un.length >= 2) {
      result = un.substring(0, 2);
    } else if (un.isNotEmpty) {
      result = un[0];
    } else {
      result = '';
    }

    return result.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final double radius = radiusImage ?? 44.0;
    final displayText = _getInitials();

    return Material(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: radius,
          height: radius,
          child: ClipOval(
            child: imageUrl.isNotEmpty
                ? CachedNetworkImage(
                    cacheKey: imageUrl,
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        _buildPlaceholder(context, radius),
                    errorWidget: (context, url, error) =>
                        _buildInitials(context, radius, displayText),
                  )
                : _buildInitials(context, radius, displayText),
          ),
        ),
      ),
    );
  }

  Widget _buildInitials(BuildContext context, double radius, String text) {
    return Container(
      alignment: Alignment.center,
      color: context.outline.withValues(alpha: 0.4),
      child: Text(
        text,
        style: context.bodyMedium().copyWith(
              color: context.onSurface,
              fontSize: radius * 0.4,
              fontWeight: FontWeight.w700,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context, double radius) {
    return Container(color: context.shadow);
  }
}
