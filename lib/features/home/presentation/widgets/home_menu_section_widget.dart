// part of 'home_wrapper_widget.dart'

// class HomeMenuSectionWidget extends StatelessWidget {
//   const HomeMenuSectionWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final menuController = Get.find<menu.MainMenuController>();
//     return Obx(() => _menuList(menuController, context));
//   }

//   Widget _menuList(menu.MainMenuController menuController, BuildContext context) {
//     final menu.MainMenuController menuController = Get.find<menu.MainMenuController>();
//     final menus = menuController.mainMenuList;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       spacing: 16,
//       children: [
//         Text(i18n.tr('features.home.menu'), style: context.bodyMediumW(600)),
//         Scrollbar(
//           thumbVisibility: true,
//           thickness: 2,
//           controller: ScrollController(),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children:
//                   menus
//                       .map(
//                         (menu) => Padding(
//                           padding: const EdgeInsets.only(right: 20),
//                           child: MainMenuItemWidget(
//                             onTap: () {
//                               if (menu.nameMenu ==
//                                   'features.menu.dutySchedule') {
//                                 final dutyController =
//                                     Get.find<DutyScheduleController>();
//                                 dutyController.fetchByTabIndex(0);
//                               }
//                             },
//                             backgroundColor: context.primary,
//                             iconMenu: customImageIconWidget(
//                               width: 32,
//                               height: 32,
//                               imagePath: menu.iconMenu,
//                               color: context.onPrimary,
//                             ),
//                             nameMenu: menu.nameMenu,
//                             routeName: menu.routeName,
//                           ),
//                         ),
//                       )
//                       .toList(),
//             ),
//           ).pb(16),
//         ),
//       ],
//     );
//   }
// }
