import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/general/home/presentation/screens/home_screen.dart';
import 'package:mobile/features/general/menu/menu.dart';

class MenuController extends GetxController {
  final FetchMainMenuUsecase fetchMainMenuUsecase;
  final FetchMainNavMenuUsecase fetchMainNavMenuUsecase;
  var navMenus = <MenuModel>[].obs;
  var mainNavMenuCurrentIndex = 0.obs;
  var mainMenuList = <MenuModel>[].obs;
  late final PageController pageController;
  late final List<Widget> pages;

  MenuController({
    required this.fetchMainMenuUsecase,
    required this.fetchMainNavMenuUsecase,
  });

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    pages = [
      HomeScreen(),
      Container(color: Colors.green),
      Container(color: Colors.blue),
      Container(color: Colors.yellow),
    ];
    navMenus.value = fetchMainNavMenuUsecase.execute();
    mainMenuList.value = fetchMainMenuUsecase.execute();
    mainNavMenuCurrentIndex.value =
        fetchMainNavMenuUsecase.execute().first.routeName;
  }

  void changeMainNavIndex(int index) {
    mainNavMenuCurrentIndex.value = index;
    pageController.jumpToPage(index);
  }
}
