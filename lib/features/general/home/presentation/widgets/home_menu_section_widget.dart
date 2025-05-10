import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile/features/general/menu/presentation/controllers/menu_controller.dart';
import 'package:mobile/features/duty_schedule/presentation/controllers/duty_schedule_controller.dart';
import 'package:mobile/shared/shared.dart';

class HomeMenuSectionWidget extends StatelessWidget {
  const HomeMenuSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<MenuController>();
    return Obx(() => _menuList(menuController, context));
  }

  Widget _menuList(MenuController menuController, BuildContext context) {
    final menus = menuController.mainMenuList;

    final menuWrap = Wrap(
      spacing: 16,
      alignment: WrapAlignment.spaceBetween,
      runAlignment: WrapAlignment.start,
      children:
          menus
              .map(
                (menu) => MainMenuItemWidget(
                  onTap: () {
                    if (menu.nameMenu == 'features.menu.dutySchedule') {
                      final dutyController = Get.find<DutyScheduleController>();
                      dutyController.fetchByTabIndex(0);
                    }
                  },
                  backgroundColor: context.color.primary,
                  iconMenu: customImageIconWidget(
                    width: 32,
                    height: 32,
                    imagePath: menu.iconMenu,
                    color: context.color.onPrimary,
                  ),
                  nameMenu: menu.nameMenu,
                  routeName: menu.routeName,
                ),
              )
              .toList(),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'features.home.menu'.tr(),
          style: context.text.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 14),
        menus.length >= 3 ? Center(child: menuWrap) : menuWrap,
      ],
    );
  }
}
