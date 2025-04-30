import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart'
    as menu;
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

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
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
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
      ),
    ),
  );
}
