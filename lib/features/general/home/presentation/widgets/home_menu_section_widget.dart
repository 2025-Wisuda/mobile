import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' show Theme;
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart';
import 'package:mobile/shared/shared.dart';

class HomeMenuSectionWidget extends StatelessWidget {
  const HomeMenuSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<MenuController>();
    return _menuList(menuController, context);
  }

  Widget _menuList(MenuController menuController, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 14,
      children: [
        Text(
          'features.home.menu'.tr(),
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...menuController.mainMenuList.map(
                (menu) => MainMenuItemWidget(
                  iconMenu: customImageIconWidget(imagePath: menu.iconMenu),
                  nameMenu: menu.nameMenu,
                  routeName: menu.routeName,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
