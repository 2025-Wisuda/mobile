import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/general/home/presentation/screens/home_screen.dart';
import 'package:mobile/features/general/menu/menu.dart';
import 'package:mobile/features/general/profile/profile.dart';
import 'package:mobile/features/schedule/presentation/screens/screen.dart';

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
    navMenuList.value = fetchMainNavMenuUsecase.execute();
    mainMenuList.value = fetchMainMenuUsecase.execute();
    mainNavMenuCurrentIndex.value =
        fetchMainNavMenuUsecase.execute().first.routeName;
    profileMenuList.value = fetchProfileMenuUsecase.execute();
  }

  void changeMainNavIndex(int index) {
    mainNavMenuCurrentIndex.value = index;
    pageController.jumpToPage(index);
  }
}
