import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile/shared/shared.dart';

class CustomProfilePictureImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? radiusImage;
  final String firstName;
  final String lastName;
  final String username;

  const CustomProfilePictureImageWidget({
    super.key,
    required this.imageUrl,
    this.radiusImage,
    required this.firstName,
    required this.lastName,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    final defaultSize = 44.0;
    final double radius = radiusImage ?? defaultSize;

    String displayText = '';
    final fn = firstName.trim();
    final ln = lastName.trim();
    final un = username.trim();

    if (fn.isNotEmpty && ln.isNotEmpty) {
      displayText = '${fn[0]}${ln[0]}'.toUpperCase();
    } else if (fn.length >= 2) {
      displayText = fn.substring(0, 2).toUpperCase();
    } else if (fn.isNotEmpty) {
      displayText = fn[0].toUpperCase();
    } else if (un.length >= 2) {
      displayText = un.substring(0, 2).toUpperCase();
    } else if (un.isNotEmpty) {
      displayText = un[0].toUpperCase();
    }

    return Container(
      padding: const EdgeInsets.all(4),
      width: radius,
      height: radius,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Center(
        child: ClipOval(
          child:
              imageUrl.isNotEmpty
                  ? CachedNetworkImage(
                    cacheKey: imageUrl,
                    imageUrl: imageUrl,
                    width: radius,
                    height: radius,
                    fit: BoxFit.cover,
                    placeholder:
                        (context, url) => CircleAvatar(
                          radius: radius,
                          backgroundColor: Theme.of(context).colorScheme.shadow,
                        ),
                    errorWidget:
                        (context, url, error) => Container(
                          width: radius,
                          height: radius,
                          alignment: Alignment.center,
                          color: Theme.of(context).colorScheme.shadow,
                          child: Text(
                            displayText,
                            style: context.text.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: radius * 0.4,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                  )
                  : Container(
                    padding: radius > 0 ? const EdgeInsets.all(2) : null,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.shadow,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      displayText,
                      style: context.text.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: radius * 0.4,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
        ),
      ),
    );
  }
}
