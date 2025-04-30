import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        spacing: 8,
        children: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=5'),
            ),
          ),
          Column(
            // TODO 2: make it dynamic
            spacing: 2,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'features.home.appBar.greeting.morning'.tr(),
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'features.home.appBar.username'.tr(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: customImageIconWidget(
              imagePath: IconConstant.bellOutlineIcon,
            ),
          ),
        ],
      ),
    );
  }
}
