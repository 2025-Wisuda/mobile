import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/features/menu/menu.dart';
import 'package:mobile/features/user/presentation/presentation.dart';
import 'package:mobile/shared/controllers/base_state_controller.dart';

@lazySingleton
class NavigationController extends BaseStateController {
  final FetchMainNavMenuUsecase fetchMainNavMenuUsecase;

  late final PageController pageController = PageController();

  late final List<Widget> pages = [
    const ProfileScreen(),
    Container(
      color: Colors.orange,
      child: const Center(child: Text('Lab Schedule')),
    ),
    Container(
      color: Colors.blue,
      child: const Center(child: Text('Room Booking')),
    ),
    Container(color: Colors.green, child: const Center(child: Text('Profile'))),
  ];

  final _navMenuList = <MenuModel>[];
  final _currentIndex = 0.obs;

  NavigationController({required this.fetchMainNavMenuUsecase});
  @PostConstruct()
  void init() {
    _loadNavMenuData();
  }

  void _loadNavMenuData() {
    _navMenuList.clear();
    _navMenuList.addAll(fetchMainNavMenuUsecase.execute());
    if (_navMenuList.isNotEmpty) {
      _currentIndex.value = _navMenuList.first.routeName;
    }
  }

  List<MenuModel> get navMenuList => _navMenuList;
  int get currentIndex => _currentIndex.value;

  void changeIndex(int index) {
    _currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
