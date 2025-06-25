import 'package:get/get.dart';

import 'package:mobile/core/config/session.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/shared/databases/database.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/mixins/mixin.dart';

class LogoutController extends GetxController with SubmitStateMixin {
  final LogoutUsecase _logoutUsecase;

  LogoutController(this._logoutUsecase);

  Future<void> logout(LogoutType logoutType) async {
    switch (logoutType) {
      case LogoutType.local:
        await _performLocalLogout();
        break;
      case LogoutType.remote:
        await _performRemoteLogout();
        break;
    }
  }

  Future<void> _performLocalLogout() async {
    await executeWithStateManagement(
      'logout',
      () async {
        await Session.clearAllTokens();
        await Get.find<UserDatabase>().clearUserData();
        await Get.find<LabScheduleDatabase>().clearLabScheduleData();
        await Get.find<DutyScheduleDatabase>().clearDutyScheduleData();
      },
    );
  }

  Future<void> _performRemoteLogout() async {
    final refreshToken = await Session.getRefreshToken();
    if (refreshToken == null) {
      await _performLocalLogout();
      return;
    }

    final logoutRequest = LogoutRequestEntity(refreshToken: refreshToken);

    await executeSubmitWithNetwork(
      'logout',
      logoutRequest,
      (entity) => _logoutUsecase.execute(data: entity),
      onSuccess: (response) async {
        await Session.clearAllTokens();
        await Get.find<UserDatabase>().clearUserData();
        await Get.find<LabScheduleDatabase>().clearLabScheduleData();
        await Get.find<DutyScheduleDatabase>().clearDutyScheduleData();
      },
      onFailure: (failure) async {
        await _performLocalLogout();
        await Session.clearAllTokens();
      },
    );
  }

  bool get isLoggingOut => isOperationActive('logout');
  bool get canLogout => canOperationInteract('logout');
  String get logoutStateDescription => getOperationStateDescription('logout');
  SubmitStateEnum get logoutState => getSubmitState('logout');
}
