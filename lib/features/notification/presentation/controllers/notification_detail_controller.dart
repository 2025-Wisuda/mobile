import 'package:get/get.dart';
import 'package:mobile/features/notification/domain/entities/notification_entity.dart';
import 'package:mobile/features/notification/domain/usecases/mark_as_read_notification_usecase.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/enums/submit_state_enum.dart';
import 'package:mobile/shared/mixins/get_mixin.dart';

class NotificationDetailController extends GetxController
    with GetFetchStateMixin {
  final MarkAsReadNotificationUsecase _markAsReadNotificationUsecase;

  NotificationDetailController(this._markAsReadNotificationUsecase);

  final Rx<NotificationEntity?> entity = Rx<NotificationEntity?>(null);
  final Rx<SubmitStateEnum> submitState = SubmitStateEnum.initial.obs;
  final RxString submitError = ''.obs;

  String get baseStateKey => 'notificationDetail';

  void setEntity(NotificationEntity notification) {
    entity.value = notification;
  }

  void clearEntity() {
    entity.value = null;
    submitState.value = SubmitStateEnum.initial;
    submitError.value = '';
  }

  Future<void> markAsRead(String notificationId) async {
    submitState.value = SubmitStateEnum.submitting;
    submitError.value = '';
    final result = await _markAsReadNotificationUsecase.execute(
        notificationId: notificationId);
    result.fold(
      (failure) {
        submitState.value = SubmitStateEnum.failure;
        submitError.value = failure.message;
      },
      (response) {
        submitState.value = SubmitStateEnum.success;
        if (entity.value != null && response.data?.id != null) {
          final updatedNotification = entity.value!.copyWith(isRead: true);
          entity.value = updatedNotification;
        }
      },
    );
  }

  void clearSubmitError() {
    submitError.value = '';
  }

  FetchStateEnum get fetchState =>
      fetchStates[baseStateKey] ?? FetchStateEnum.initial;
  String get fetchError => errorMessages[baseStateKey] ?? '';
}
