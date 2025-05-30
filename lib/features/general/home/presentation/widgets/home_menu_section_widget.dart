// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart' show Scrollbar;
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/duty_schedule/presentation/controllers/duty_schedule_controller.dart';
import 'package:mobile/features/general/menu/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart'
    as menu;

class HomeMenuSectionWidget extends StatelessWidget {
  const HomeMenuSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<menu.MenuController>();
    return Obx(() => _menuList(menuController, context));
  }

  Widget _menuList(menu.MenuController menuController, BuildContext context) {
    final menu.MenuController menuController = Get.find<menu.MenuController>();
    final menus = menuController.mainMenuList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(i18n.tr('features.home.menu'), style: context.bodyMediumW(600)),
        Scrollbar(
          thumbVisibility: true,
          thickness: 2,
          controller: ScrollController(),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  menus
                      .map(
                        (menu) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: MainMenuItemWidget(
                            onTap: () {
                              if (menu.nameMenu ==
                                  'features.menu.dutySchedule') {
                                final dutyController =
                                    Get.find<DutyScheduleController>();
                                dutyController.fetchByTabIndex(0);
                              }
                            },
                            backgroundColor: context.primary,
                            iconMenu: customImageIconWidget(
                              width: 32,
                              height: 32,
                              imagePath: menu.iconMenu,
                              color: context.onPrimary,
                            ),
                            nameMenu: menu.nameMenu,
                            routeName: menu.routeName,
                          ),
                        ),
                      )
                      .toList(),
            ),
          ).pb(16),
        ),
      ],
    );
  }
}
