import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart'
    as menu;
import 'package:mobile/features/general/menu/presentation/widgets/menu_bottom_nav_bar_item_widget.dart';

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
          shadowColor: Theme.of(context).colorScheme.onSurface,
          clipBehavior: Clip.antiAlias,
          surfaceTintColor: Theme.of(context).colorScheme.shadow,
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
                color:
                    isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurfaceVariant,
              );
            }),
          ),
        ),
      ),
    );
  }
}
