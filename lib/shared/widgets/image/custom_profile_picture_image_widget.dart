import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

class CustomProfilePictureImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? heightImage;
  final double? widthImage;
  final double? radiusImage;

  const CustomProfilePictureImageWidget({
    super.key,
    required this.imageUrl,
    this.heightImage,
    this.widthImage,
    this.radiusImage,
  });

  @override
  Widget build(BuildContext context) {
    final defaultSize = 44.0;
    final double radius = radiusImage ?? defaultSize;

    return Container(
      padding: const EdgeInsets.all(4),
      width: widthImage ?? defaultSize,
      height: heightImage ?? defaultSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
        ),
      ),
      child: Center(
        child: ClipOval(
          child:
              imageUrl.isNotEmpty
                  ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: widthImage ?? defaultSize,
                    height: heightImage ?? defaultSize,
                    fit: BoxFit.cover,
                    placeholder:
                        (context, url) => CircleAvatar(
                          radius: radius,
                          backgroundColor:
                              Theme.of(
                                context,
                              ).colorScheme.surfaceContainerLowest,
                        ),
                    errorWidget:
                        (context, url, error) => Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Icon(
                            Icons.person,
                            color: Theme.of(context).colorScheme.outline,
                            size: radius,
                          ),
                        ),
                  )
                  : customImageIconWidget(
                    imagePath: IconConstant.userSolidIcon,
                    width: radius,
                    height: radius,
                  ),
        ),
      ),
    );
  }
}
