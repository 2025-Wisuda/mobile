import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/features/menu/menu.dart';
import 'package:mobile/features/user/presentation/controllers/fetch_user_profile_controller.dart';
import 'package:mobile/shared/controllers/base_state_controller.dart';

@lazySingleton
class MainMenuController extends BaseStateController {
  final FetchMainMenuUsecase fetchMainMenuUsecase;
  final FetchUserProfileController fetchUserProfileController;

  final _mainMenuList = <MenuModel>[].obs;

  MainMenuController({
    required this.fetchMainMenuUsecase,
    required this.fetchUserProfileController,
  });

  @PostConstruct()
  void init() {
    ever(fetchUserProfileController.userProfileRx, (_) => _loadMenuData());
    _loadMenuData();
  }

  Future<void> _loadMenuData() async {
    final userGroup = fetchUserProfileController.userGroup;
    if (userGroup.isEmpty) {
      _mainMenuList.clear();
      return;
    }

    final allMenus = fetchMainMenuUsecase.execute();
    final filtered =
        allMenus
            .where((menu) => menu.allowedGroup.contains(userGroup))
            .toList();
    _mainMenuList.assignAll(filtered);
  }

  List<MenuModel> get mainMenuList => _mainMenuList;

  void refreshMenuData() {
    _loadMenuData();
  }
}
