// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart'
    as menu;

Widget menuBottomNavBarItemWidget(
  BuildContext context, {
  required String iconMenu,
  required String labelMenu,
  required int indexMenu,
  required bool isSelected,
  required Color color,
}) {
  return GestureDetector(
    onTap: () {
      Get.find<menu.MenuController>().changeMainNavIndex(indexMenu);
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        customImageIconWidget(imagePath: iconMenu, color: color),
        if (isSelected)
          Text(
            labelMenu,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
      ],
    ).py(8),
  );
}
