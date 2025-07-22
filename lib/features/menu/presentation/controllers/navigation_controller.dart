import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/home/presentation/screens/screen.dart';
import 'package:mobile/features/lab_schedule/domain/usecases/usecase.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/screens/screen.dart';
import 'package:mobile/features/menu/menu.dart';
import 'package:mobile/features/room_booking/presentation/screens/screen.dart';
import 'package:mobile/features/user/presentation/screens/screen.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/mixins/mixin.dart';

class NavigationController extends GetxController with FetchStateMixin {
  final FetchMainNavMenuUsecase fetchMainNavMenuUsecase;

  NavigationController({required this.fetchMainNavMenuUsecase});

  final RxList<MenuModel> navMenuList = <MenuModel>[].obs;
  final RxInt currentIndex = 0.obs;

  static final Map<int, Widget> _tabPages = {
    0: HomeScreen(),
    1: LabScheduleScreen(),
    2: RoomBookingScreen(),
    3: ProfileScreen(),
  };

  @override
  void onInit() {
    super.onInit();
    loadNavMenu();
  }

  Future<void> loadNavMenu() async {
    setFetchState('navMenu', FetchStateEnum.loading);

    final result = await fetchMainNavMenuUsecase.execute();
    result.fold(
      (failure) {
        setFetchState('navMenu', FetchStateEnum.failure);
      },
      (menuList) {
        if (menuList.isEmpty) {
          setFetchState('navMenu', FetchStateEnum.empty);
          navMenuList.clear();
          currentIndex.value = 0;
        } else {
          navMenuList.assignAll(menuList);
          if (currentIndex.value >= menuList.length) {
            currentIndex.value = 0;
          }
          setFetchState('navMenu', FetchStateEnum.success);
        }
      },
    );
  }

  void changeIndex(int index) {
    if (index >= 0 && index < navMenuList.length) {
      _initializeBinding(index);

      currentIndex.value = index;
    }
  }

  Widget getPageByIndex(int index) {
    if (index >= navMenuList.length) {
      return const Center(child: Text('Page not found'));
    }
    return _tabPages[index] ??
        Container(
          color: Colors.grey,
          child: Center(child: Text('Page $index not implemented')),
        );
  }

  void _initializeBinding(int index) {
    switch (index) {
      case 0:
        _initializeHomeBinding();
        break;
      case 1:
        _initializeLabScheduleBinding();
        break;
      case 2:
        _initializeRoomBookingBinding();
        break;
      case 3:
        _initializeProfileBinding();
        break;
    }
  }

  void _initializeHomeBinding() {
    final homeBinding = HomeBinding();
    homeBinding.dependencies();

    final dutyScheduleBinding = FetchDutyScheduleForTodayBinding();
    dutyScheduleBinding.dependencies();

    final labScheduleBinding = FetchMyLabScheduleBinding();
    labScheduleBinding.dependencies();
  }

  void _initializeLabScheduleBinding() {
    final labScheduleBinding = ListLabScheduleBinding();
    labScheduleBinding.dependencies();
  }

  void _initializeRoomBookingBinding() {
    final labScheduleBinding = MultiLabScheduleBinding(controllers: [
      LabScheduleControllerType.fetchLabAvailability,
    ]);
    labScheduleBinding.dependencies();

    if (!Get.isRegistered<LabAvailabilityController>(
        tag: 'room_booking_availability')) {
      Get.lazyPut<LabAvailabilityController>(
        () =>
            LabAvailabilityController(Get.find<FetchLabAvailabilityUsecase>()),
        tag: 'room_booking_availability',
      );

      if (Get.isRegistered<LabAvailabilityController>(
          tag: 'room_booking_availability')) {
        final availabilityController = Get.find<LabAvailabilityController>(
            tag: 'room_booking_availability');
        availabilityController.resetTimeSelection();
      }
    }
  }

  void _initializeProfileBinding() {
    final profileBinding = ProfileBinding();
    profileBinding.dependencies();
  }

  Future<void> refreshNavMenu() async {
    await loadNavMenu();
  }

  void resetToHome() {
    currentIndex.value = 0;
  }
}
