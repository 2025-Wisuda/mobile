import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/features/menu/menu.dart';
import 'package:mobile/features/user/presentation/controllers/fetch_user_profile_controller.dart';
import 'package:mobile/shared/controllers/base_state_controller.dart';

@lazySingleton
class ProfileMenuController extends BaseStateController {
  final FetchProfileMenuUsecase fetchProfileMenuUsecase;
  final FetchUserProfileController fetchUserProfileController;

  final _profileMenuList = <MenuSectionModel>[].obs;

  ProfileMenuController({
    required this.fetchProfileMenuUsecase,
    required this.fetchUserProfileController,
  });

  @PostConstruct()
  void init() {
    ever(
      fetchUserProfileController.userProfileRx,
      (_) => _loadProfileMenuData(),
    );

    _loadProfileMenuData();
  }

  Future<void> _loadProfileMenuData() async {
    final activeGroup = fetchUserProfileController.userGroup;
    if (activeGroup.isEmpty) {
      _profileMenuList.clear();
      return;
    }

    final allSections = fetchProfileMenuUsecase.execute();
    final filteredSections =
        allSections
            .map((section) {
              final menus =
                  section.menus
                      .where((menu) => menu.allowedGroup.contains(activeGroup))
                      .toList();
              return MenuSectionModel(title: section.title, menus: menus);
            })
            .where((section) => section.menus.isNotEmpty)
            .toList();

    _profileMenuList.assignAll(filteredSections);
  }

  RxList<MenuSectionModel> get profileMenuList => _profileMenuList;

  void refreshMenuData() {
    _loadProfileMenuData();
  }
}
