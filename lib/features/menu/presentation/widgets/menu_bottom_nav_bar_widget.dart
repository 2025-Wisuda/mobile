import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/di/injection.dart';
import 'package:mobile/features/menu/presentation/controllers/navigation_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/custom_image_icon_widget.dart';

part 'menu_bottom_nav_bar_item_widget.dart';

class MenuBottomNavBarWidget extends StatelessWidget {
  const MenuBottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationController = getIt<NavigationController>();

    return Scaffold(
      body: PageView(
        controller: navigationController.pageController,
        onPageChanged: (index) => navigationController.changeIndex(index),
        children: navigationController.pages,
      ),
      bottomNavigationBar: Obx(() {
        final currentIndex = navigationController.currentIndex;
        final navMenuList = navigationController.navMenuList;
        return BottomAppBar(
          shadowColor: context.onSurface,
          clipBehavior: Clip.antiAlias,
          surfaceTintColor: context.shadow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(navMenuList.length, (index) {
              final menu = navMenuList[index];
              final isSelected = currentIndex == index;
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
        );
      }),
    );
  }
}
