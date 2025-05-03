import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/shared/widgets/image/custom_profile_picture_image_widget.dart';

class ProfileAppBarWidget extends StatelessWidget {
  const ProfileAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 2,
      children: [
        Center(
          child: CustomProfilePictureImageWidget(
            imageUrl: 'https://i.pravatar.cc/150?img=5',
            heightImage: 60,
            widthImage: 60,
            radiusImage: 60,
          ),
        ),
        SizedBox(height: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              // 'features.user.form.label.fullName'.tr(),
              'Nur Annisa Septriza',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              // 'features.user.form.label.username'.tr(),
              '2115061060',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.scrim,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
