// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/home/presentation/screens/home_screen.dart';
import 'package:mobile/features/general/menu/menu.dart';
import 'package:mobile/features/general/profile/profile.dart';
import 'package:mobile/features/lab_schedule/presentation/screens/screen.dart';
import 'package:mobile/shared/databases/user_database.dart';

class MenuController extends GetxController {
  final FetchMainMenuUsecase fetchMainMenuUsecase;
  final FetchMainNavMenuUsecase fetchMainNavMenuUsecase;
  var navMenuList = <MenuModel>[].obs;
  var mainNavMenuCurrentIndex = 0.obs;
  var mainMenuList = <MenuModel>[].obs;
  late final PageController pageController;
  late final List<Widget> pages;
  var profileMenuList = <MenuSectionModel>[].obs;
  final FetchProfileMenuUsecase fetchProfileMenuUsecase;
  final userGroup = Rxn<String>();

  MenuController({
    required this.fetchMainMenuUsecase,
    required this.fetchMainNavMenuUsecase,
    required this.fetchProfileMenuUsecase,
  });

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    pages = [
      HomeScreen(),
      ListLabScheduleScreen(),
      Container(color: Colors.blue),
      ProfileScreen(),
    ];
    fetchUserGroup();
    ever<String?>(userGroup, (group) async {
      if (group != null && group.isNotEmpty) {
        await Future.delayed(const Duration(milliseconds: 100));
        _loadData();
      }
    });
  }

  Future<void> _loadData() async {
    final group = userGroup.value?.toLowerCase();

    final allMenus = fetchMainMenuUsecase.execute();
    if (group != null) {
      mainMenuList.value =
          allMenus.where((menu) => menu.allowedGroup.contains(group)).toList();
    } else {
      mainMenuList.value = [];
    }

    navMenuList.value = fetchMainNavMenuUsecase.execute();
    mainNavMenuCurrentIndex.value = navMenuList.first.routeName;
    profileMenuList.value = fetchProfileMenuUsecase.execute();
  }

  Future<void> fetchUserGroup() async {
    final group = await UserDatabase.getUserGroup();
    userGroup.value = group;
  }

  void changeMainNavIndex(int index) {
    mainNavMenuCurrentIndex.value = index;
    pageController.jumpToPage(index);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
