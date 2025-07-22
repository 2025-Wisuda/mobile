import 'package:get/get.dart';
import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/usecases/usecase.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/enums/submit_state_enum.dart';
import 'package:mobile/shared/mixins/get_mixin.dart';


class FcmController extends GetxController with GetFetchStateMixin {
  final FetchMyDevicesUsecase _fetchMyDevicesUsecase;
  final RegisterDeviceUsecase _registerDeviceUsecase;
  final UnregisterDeviceUsecase _unregisterDeviceUsecase;

  FcmController(
    this._fetchMyDevicesUsecase,
    this._registerDeviceUsecase,
    this._unregisterDeviceUsecase,
  );

  final RxList<ListFcmDeviceEntity> devices = <ListFcmDeviceEntity>[].obs;

  final Rx<SubmitStateEnum> registerState = SubmitStateEnum.initial.obs;
  final RxString registerError = ''.obs;

  final Rx<SubmitStateEnum> unregisterState = SubmitStateEnum.initial.obs;
  final RxString unregisterError = ''.obs;

  String get baseStateKey => 'fcmDevices';

  Future<void> fetchDevices() async {
    fetchStates[baseStateKey] = FetchStateEnum.loading;
    final result = await _fetchMyDevicesUsecase.execute();
    result.fold(
      (failure) {
        fetchStates[baseStateKey] = FetchStateEnum.failure;
        errorMessages[baseStateKey] = failure.message;
      },
      (response) {
        final data = response.data ?? [];
        if (data.isEmpty) {
          fetchStates[baseStateKey] = FetchStateEnum.empty;
        } else {
          fetchStates[baseStateKey] = FetchStateEnum.success;
        }
        devices.assignAll(data);
      },
    );
  }

  Future<void> registerDevice({
    required String registrationToken,
    String? deviceType,
    String? deviceName,
  }) async {
    registerState.value = SubmitStateEnum.submitting;
    registerError.value = '';
    final result = await _registerDeviceUsecase.execute(
      registrationToken: registrationToken,
      deviceType: deviceType,
      deviceName: deviceName,
    );
    result.fold(
      (failure) {
        registerState.value = SubmitStateEnum.failure;
        registerError.value = failure.message;
      },
      (response) {
        registerState.value = SubmitStateEnum.success;
        fetchDevices();
      },
    );
  }

  Future<void> unregisterDevice({
    required String registrationToken,
  }) async {
    unregisterState.value = SubmitStateEnum.submitting;
    unregisterError.value = '';
    final result = await _unregisterDeviceUsecase.execute(
      registrationToken: registrationToken,
    );
    result.fold(
      (failure) {
        unregisterState.value = SubmitStateEnum.failure;
        unregisterError.value = failure.message;
      },
      (response) {
        unregisterState.value = SubmitStateEnum.success;
      },
    );
  }

  void clearRegisterError() {
    registerError.value = '';
  }

  void clearUnregisterError() {
    unregisterError.value = '';
  }

  void clearFetchError() {
    errorMessages.remove(baseStateKey);
  }

  FetchStateEnum get fetchState =>
      fetchStates[baseStateKey] ?? FetchStateEnum.initial;
  String get fetchError => errorMessages[baseStateKey] ?? '';
}
