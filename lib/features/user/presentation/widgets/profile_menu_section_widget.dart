import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/menu/presentation/controllers/controller.dart';
import 'package:mobile/features/menu/presentation/widgets/widget.dart';
import 'package:mobile/features/settings/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ProfileMenuSectionWidget extends StatelessWidget {
  final ProfileMenuController c;

  const ProfileMenuSectionWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    c.loadProfileMenu();
    return Obx(() => _menuList(c, context));
  }

  Widget _menuList(
    ProfileMenuController c,
    BuildContext context,
  ) {
    if (c.profileMenuList.isEmpty) {
      return const Center(child: Text('No menu items available'));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...c.profileMenuList.asMap().entries.expand((entry) {
          final index = entry.key;
          final section = entry.value;
          return [
            if (index > 0) const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                section.title,
                style: context.bodyMediumW(600).copyWith(
                      color: context.onSurface,
                    ),
              ),
            ),
            ...section.menus.map(
              (menu) => Column(
                children: [
                  if (menu.routeName == '/settings/theme')
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DarkModeSwitchWidget(
                        iconMenu: customImageIconWidget(
                          imagePath: menu.iconMenu,
                          width: 24,
                          color: context.onSurfaceVariant,
                        ),
                        nameMenu: menu.nameMenu,
                        backgroundColor: context.surfaceContainer,
                      ),
                    )
                  else if (menu.routeName == '/settings/language')
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LanguageSwitchWidget(
                        iconMenu: customImageIconWidget(
                          imagePath: menu.iconMenu,
                          width: 24,
                          height: 24,
                          color: context.onSurfaceVariant,
                        ),
                        nameMenu: menu.nameMenu,
                        backgroundColor: context.surfaceContainer,
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProfileMenuItemWidget(
                        iconMenu: customImageIconWidget(
                          imagePath: menu.iconMenu,
                          width: 24,
                          height: 24,
                          color: context.onSurfaceVariant,
                        ),
                        nameMenu: menu.nameMenu,
                        routeName: menu.routeName,
                        backgroundColor: context.surfaceContainer,
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ];
        }),
      ],
    );
  }
}
