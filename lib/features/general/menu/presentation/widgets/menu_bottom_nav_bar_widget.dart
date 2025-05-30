// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/menu/presentation/widgets/menu_bottom_nav_bar_item_widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart'
    as menu;

class MenuBottomNavBarWidget extends StatelessWidget {
  const MenuBottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<menu.MenuController>();

    return Scaffold(
      body: PageView(
        controller: menuController.pageController,
        onPageChanged: (index) => menuController.changeMainNavIndex(index),
        children: menuController.pages,
      ),
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          shadowColor: context.onSurface,
          clipBehavior: Clip.antiAlias,
          surfaceTintColor: context.shadow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(menuController.navMenuList.length, (index) {
              final menu = menuController.navMenuList[index];
              final isSelected =
                  menuController.mainNavMenuCurrentIndex.value == index;
              return menuBottomNavBarItemWidget(
                context,
                iconMenu: menu.iconMenu,
                labelMenu: menu.nameMenu,
                indexMenu: index,
                isSelected: isSelected,
                color: isSelected ? context.primary : context.onSurfaceVariant,
              );
            }),
          ),
        ),
      ),
    );
  }
}
