import 'package:get/get.dart';

import 'package:mobile/features/menu/menu.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/mixins/mixin.dart';

class ProfileMenuController extends GetxController with FetchStateMixin {
  final FetchProfileMenuUsecase fetchProfileMenuUsecase;
  final UserProfileController userProfileController;

  ProfileMenuController({
    required this.fetchProfileMenuUsecase,
    required this.userProfileController,
  });

  final RxList<MenuSectionModel> profileMenuList = <MenuSectionModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadProfileMenu();
    _setupReactiveListener();
  }

  void _setupReactiveListener() {
    ever(userProfileController.userProfileRx, (_) => _loadProfileMenuData());
  }

  Future<void> loadProfileMenu() async {
    await _loadProfileMenuData();
  }

  Future<void> _loadProfileMenuData() async {
    setFetchState('profileMenu', FetchStateEnum.loading);

    final activeGroup = userProfileController.userGroup;
    if (activeGroup.isEmpty) {
      setFetchState('profileMenu', FetchStateEnum.empty);
      profileMenuList.clear();
      return;
    }

    final result = await fetchProfileMenuUsecase.execute();
    result.fold(
      (failure) {
        setFetchState('profileMenu', FetchStateEnum.failure);
      },
      (allSections) {
        final filteredSections = allSections
            .map((section) {
              final menus = section.menus
                  .where((menu) => menu.allowedGroup.contains(activeGroup))
                  .toList();
              return MenuSectionModel(title: section.title, menus: menus);
            })
            .where((section) => section.menus.isNotEmpty)
            .toList();

        if (filteredSections.isEmpty) {
          setFetchState('profileMenu', FetchStateEnum.empty);
          profileMenuList.clear();
        } else {
          profileMenuList.assignAll(filteredSections);
          setFetchState('profileMenu', FetchStateEnum.success);
        }
      },
    );
  }

  Future<void> refreshMenuData() async {
    await _loadProfileMenuData();
  }

  bool get isLoading => isOperationLoading('profileMenu');
  bool get hasError => isOperationError('profileMenu');
  bool get isEmpty => isOperationEmpty('profileMenu');
}
