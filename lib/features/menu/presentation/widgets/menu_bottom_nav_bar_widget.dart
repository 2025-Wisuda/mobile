import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/menu/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class MenuBottomNavBarWidget extends GetView<NavigationController> {
  const MenuBottomNavBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final currentIndex = controller.currentIndex.value;
        return controller.getPageByIndex(currentIndex);
      }),
      bottomNavigationBar: Obx(() {
        final navMenuList = controller.navMenuList;
        final currentIndex = controller.currentIndex.value;

        return SafeArea(
          bottom: true,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: context.outline.withValues(alpha: 0.6),
                  width: 0.33,
                ),
              ),
            ),
            child: BottomAppBar(
              clipBehavior: Clip.antiAlias,
              surfaceTintColor: context.shadow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(navMenuList.length, (index) {
                  final menu = navMenuList[index];
                  final isSelected = currentIndex == index;
                  final color =
                      isSelected ? context.primary : context.onSurfaceVariant;

                  return _buildMenuItem(
                    context,
                    iconMenu: menu.iconMenu,
                    labelMenu: menu.nameMenu,
                    indexMenu: index,
                    isSelected: isSelected,
                    color: color,
                  );
                }),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required String iconMenu,
    required String labelMenu,
    required int indexMenu,
    required bool isSelected,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: GestureDetector(
          onTap: () {
            controller.changeIndex(indexMenu);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              customImageIconWidget(imagePath: iconMenu, color: color),
              if (isSelected)
                Text(
                  labelMenu,
                  style: context.labelLarge().copyWith(
                        color: context.primary,
                      ),
                ),
            ],
          )),
    );
  }
}
