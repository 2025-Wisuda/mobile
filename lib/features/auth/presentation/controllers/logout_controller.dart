import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:mobile/core/config/session.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/shared/databases/database.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/mixins/submit_state_mixin.dart';
import 'package:mobile/shared/utils/simple_logger.dart';

class GetLogoutController extends GetxController with SubmitStateMixin {
  final LogoutUsecase _logoutUsecase;

  GetLogoutController(this._logoutUsecase);

  String get baseStateKey => 'logout';

  SubmitStateEnum get state => getSubmitState(baseStateKey);
  String get stateDescription => getOperationStateDescription(baseStateKey);

  Future<void> executeSubmit([LogoutRequestEntity? entity]) async {
    setSubmitState(baseStateKey, SubmitStateEnum.submitting);
    setCustomMessage(baseStateKey, '');
    try {
      // Unregister FCM device before logout
      await _unregisterFcmDevice();

      if (entity == null) {
        await _performLocalLogout();
        setSubmitState(baseStateKey, SubmitStateEnum.success);
        return;
      }
      final result = await _logoutUsecase.execute(data: entity);
      result.fold(
        (failure) async {
          await _performLocalLogout();
          await Session.clearAllTokens();
          setSubmitState(baseStateKey, SubmitStateEnum.failure);
          setCustomMessage(baseStateKey, failure.message);
        },
        (_) async {
          await Session.clearAllTokens();
          await Get.find<UserDatabase>().clearUserData();
          await Get.find<LabScheduleDatabase>().clearLabScheduleData();
          await Get.find<DutyScheduleDatabase>().clearDutyScheduleData();
          setSubmitState(baseStateKey, SubmitStateEnum.success);
        },
      );
    } catch (e) {
      setSubmitState(baseStateKey, SubmitStateEnum.failure);
      setCustomMessage(baseStateKey, e.toString());
    }
  }

  Future<void> _unregisterFcmDevice() async {
    try {
      if (Get.isRegistered<FcmController>()) {
        final fcmController = Get.find<FcmController>();
        final fcmToken = await _getFcmToken();
        if (fcmToken != null) {
          await fcmController.unregisterDevice(registrationToken: fcmToken);
        }
      }
    } catch (e) {
      SimpleLogger.error('FCM unregister error during logout: $e');
    }
  }

  Future<String?> _getFcmToken() async {
    try {
      final fcm = Get.find<FirebaseMessaging>();
      return await fcm.getToken();
    } catch (e) {
      return null;
    }
  }

  Future<void> _performLocalLogout() async {
    await Session.clearAllTokens();
    await Get.find<UserDatabase>().clearUserData();
    await Get.find<LabScheduleDatabase>().clearLabScheduleData();
    await Get.find<DutyScheduleDatabase>().clearDutyScheduleData();
  }

  Future<void> logout(LogoutType logoutType) async {
    if (logoutType == LogoutType.local) {
      await executeSubmit();
    } else {
      final refreshToken = await Session.getRefreshToken();
      if (refreshToken == null) {
        await executeSubmit();
        return;
      }
      await executeSubmit(LogoutRequestEntity(refreshToken: refreshToken));
    }
  }
}
