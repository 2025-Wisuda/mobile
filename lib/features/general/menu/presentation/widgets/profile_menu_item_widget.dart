// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

// Project imports:
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/shared/helpers/extensions/text_style_extension_helper.dart';
import 'package:mobile/shared/widgets/icon/icon.dart';

class ProfileMenuItemWidget extends StatelessWidget {
  final Widget iconMenu;
  final String nameMenu;
  final String routeName;
  final Color? backgroundColor;

  const ProfileMenuItemWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    required this.routeName,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
            ),
            child: iconMenu,
          ),
          Text(
            nameMenu,
            style: context.bodyMediumW(500),
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Spacer(),
          customImageIconWidget(
            imagePath: IconConstant.chevronRightOutlineIcon,
            width: 44,
            height: 24,
          ),
        ],
      ),
    );
  }
}
