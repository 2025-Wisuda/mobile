import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Register notification binding
    final notificationBinding = NotificationBinding();
    notificationBinding.dependencies();

    final userBinding =
        MultiUserBinding(controllers: [UserControllerType.fetchUserProfile]);
    userBinding.dependencies();

    final menuBinding = MultiMenuBinding(controllers: [
      MenuControllerType.mainMenu,
      MenuControllerType.profileMenu,
      MenuControllerType.navigation,
    ]);
    menuBinding.dependencies();

    final labScheduleBinding = FetchMyLabScheduleBinding();
    labScheduleBinding.dependencies();

    final dutyScheduleBinding = FetchDutyScheduleForTodayBinding();
    dutyScheduleBinding.dependencies();
  }
}
