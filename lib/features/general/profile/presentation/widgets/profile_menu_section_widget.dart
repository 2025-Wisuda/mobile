// Flutter imports:
import 'package:flutter/material.dart' show Theme;
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart';
import 'package:mobile/features/general/menu/presentation/widgets/profile_menu_item_widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ProfileMenuSectionWidget extends StatelessWidget {
  const ProfileMenuSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<MenuController>();
    return _menuList(menuController, context);
  }

  Widget _menuList(MenuController menuController, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children:
          menuController.profileMenuList.map((section) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(
                  section.title,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 2),
                ...section.menus.map(
                  (menu) => Column(
                    children: [
                      ProfileMenuItemWidget(
                        iconMenu: customImageIconWidget(
                          imagePath: menu.iconMenu,
                          width: 24,
                          height: 24,
                        ),
                        nameMenu: menu.nameMenu,
                        routeName: menu.routeName,
                        backgroundColor: context.surfaceContainerHigh,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
    );
  }
}
