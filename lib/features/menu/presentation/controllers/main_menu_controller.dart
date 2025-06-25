import 'package:get/get.dart';

import 'package:mobile/features/menu/menu.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/mixins/mixin.dart';

class MainMenuController extends GetxController with FetchStateMixin {
  final FetchMainMenuUsecase fetchMainMenuUsecase;
  final UserProfileController userProfileController;

  MainMenuController({
    required this.fetchMainMenuUsecase,
    required this.userProfileController,
  });

  final RxList<MenuModel> mainMenuList = <MenuModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadMenuData();
    _setupReactiveListener();
  }

  void _setupReactiveListener() {
    ever(userProfileController.userProfileRx, (_) => _loadMenuData());
  }

  Future<void> loadMenuData() async {
    await _loadMenuData();
  }

  Future<void> _loadMenuData() async {
    setFetchState('mainMenu', FetchStateEnum.loading);
    final userGroup = userProfileController.userGroup;
    if (userGroup.isEmpty) {
      setFetchState('mainMenu', FetchStateEnum.empty);
      mainMenuList.clear();
      return;
    }
    final result = await fetchMainMenuUsecase.execute();
    result.fold(
      (failure) {
        setFetchState('mainMenu', FetchStateEnum.failure);
      },
      (allMenus) {
        final filtered = allMenus
            .where((menu) => menu.allowedGroup.contains(userGroup))
            .toList();
        if (filtered.isEmpty) {
          setFetchState('mainMenu', FetchStateEnum.empty);
          mainMenuList.clear();
        } else {
          mainMenuList.assignAll(filtered);
          setFetchState('mainMenu', FetchStateEnum.success);
        }
      },
    );
  }

  Future<void> refreshMenuData() async {
    await _loadMenuData();
  }
}
