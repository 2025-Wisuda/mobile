import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    final userBinding = MultiUserBinding(controllers: [
      UserControllerType.fetchUserProfile,
    ]);
    userBinding.dependencies();
    final menuBinding = MultiMenuBinding(controllers: [
      MenuControllerType.mainMenu,
      MenuControllerType.profileMenu,
      MenuControllerType.navigation,
    ]);
    menuBinding.dependencies();

    final labScheduleBinding = MultiLabScheduleBinding(controllers: [
      LabScheduleControllerType.fetchMyLabSchedule,
      LabScheduleControllerType.fetchLabScheduleDetail,
    ]);
    labScheduleBinding.dependencies();

    final dutyScheduleBinding = MultiDutyScheduleBinding(controllers: [
      DutyScheduleControllerType.fetchDutyScheduleForToday,
    ]);
    dutyScheduleBinding.dependencies();
  }
}
