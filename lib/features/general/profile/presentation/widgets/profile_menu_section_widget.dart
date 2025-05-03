import 'package:flutter/material.dart' show Theme;
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart';
import 'package:mobile/features/general/menu/presentation/widgets/profile_menu_item_widget.dart';
import 'package:mobile/shared/shared.dart';

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
                const SizedBox(height: 8),
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
                        backgroundColor:
                            Theme.of(context).colorScheme.surfaceContainerHigh,
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
