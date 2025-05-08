import 'package:flutter/material.dart';
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/schedule/data/models/lab_schedule_filter_params_model.dart';
import 'package:mobile/features/schedule/domain/domain.dart';
import 'package:get/state_manager.dart';
import 'package:mobile/shared/helpers/date_helper.dart';

class LabScheduleController extends GetxController {
  final FetchListLabScheduleUsecase fetchListLabScheduleUsecase;
  final FetchLabScheduleDetailUsecase fetchLabScheduleDetailUsecase;
  final UpdateLabScheduleUsecase updateLabScheduleUsecase;
  final ApproveLabScheduleUsecase approveLabScheduleUsecase;
  final DeleteLabScheduleUsecase deleteLabScheduleUsecase;

  LabScheduleController({
    required this.fetchListLabScheduleUsecase,
    required this.fetchLabScheduleDetailUsecase,
    required this.updateLabScheduleUsecase,
    required this.approveLabScheduleUsecase,
    required this.deleteLabScheduleUsecase,
  });

  final activityTypeController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final activityDescriptionController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final scheduleDateController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final startTimeController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final endTimeController = Rx<TextEditingController>(TextEditingController());
  final approvalStatusController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final searchLabScheduleController = Rx<TextEditingController>(
    TextEditingController(),
  );

  final activityTypeFocusNode = Rx<FocusNode>(FocusNode());
  final activityDescriptionFocusNode = Rx<FocusNode>(FocusNode());
  final scheduleDateFocusNode = Rx<FocusNode>(FocusNode());
  final startTimeFocusNode = Rx<FocusNode>(FocusNode());
  final endTimeFocusNode = Rx<FocusNode>(FocusNode());
  final approvalStatusFocusNode = Rx<FocusNode>(FocusNode());
  final searchLabScheduleFocusNode = Rx<FocusNode>(FocusNode());

  final activityTypeError = RxString('');
  final activityDescriptionError = RxString('');
  final scheduleDateError = RxString('');
  final startTimeError = RxString('');
  final endTimeError = RxString('');
  final approvalStatusError = RxString('');
  final searchLabScheduleError = RxString('');

  final selectedScheduleDate = Rxn<DateTime>();
  final selectedStartTime = Rxn<TimeOfDay>();
  final selectedEndTime = Rxn<TimeOfDay>();

  final isUpdateLabScheduleFormValid = RxBool(false);
  final isApproveLabScheduleFormValid = RxBool(false);

  final fetchListLabScheduleState = Rx(FetchStateEnum.initial);
  final fetchLabScheduleDetailState = Rx(FetchStateEnum.initial);
  final updateLabScheduleState = Rx(FetchStateEnum.initial);
  final approveLabScheduleState = Rx(FetchStateEnum.initial);
  final deleteLabScheduleState = Rx(FetchStateEnum.initial);
  final searchLabScheduleState = Rx(FetchStateEnum.initial);

  final errorMessage = RxString('');

  final labScheduleEntity = Rxn<LabScheduleEntity?>();
  final listLabScheduleEntity = Rxn<ListLabScheduleEntity?>();

  final isSearchActive = RxBool(false);

  final scheduleDate = Rx<String>(DateHelper.getDayOnly());

  final selectedDate = Rx<DateTime>(DateTime.now());
  final focusedDate = Rx<DateTime>(DateTime.now());

  void toggleSearchLabSchedule() {
    isSearchActive.value = !isSearchActive.value;
    if (isSearchActive.value) {
      searchLabScheduleController.value.clear();
      searchLabScheduleFocusNode.value.requestFocus();
    } else {
      searchLabScheduleController.value.clear();
      searchLabScheduleFocusNode.value.unfocus();
    }
  }

  void toggleSearchMaintenance() {
    isSearchActive.value = !isSearchActive.value;
    if (isSearchActive.value) {
      searchLabScheduleFocusNode.value.requestFocus();
    } else {
      searchLabScheduleFocusNode.value.unfocus();
    }
  }

  void clearSearch() {
    searchLabScheduleController.value.clear();
    isSearchActive.value = false;
  }

  void clearUpdate() {
    activityTypeController.value.clear();
    activityDescriptionController.value.clear();
    scheduleDateController.value.clear();
    startTimeController.value.clear();
    endTimeController.value.clear();
    activityTypeError.value = '';
    activityDescriptionError.value = '';
    scheduleDateError.value = '';
    startTimeError.value = '';
    endTimeError.value = '';
  }

  void updateScheduleDate(String newDate) {
    scheduleDate.value = newDate;
  }

  void clearApprove() {
    approvalStatusController.value.clear();
    approvalStatusError.value = '';
  }

  Future<void> fetchListLabSchedule({
    required LabScheduleFilterParamsModel scheduleFilterParamsModel,
    required Rx<FetchStateEnum> stateTarget,
  }) async {
    final result = await fetchListLabScheduleUsecase.execute(
      params: scheduleFilterParamsModel,
    );
    stateTarget.value = FetchStateEnum.loading;
    await Future.delayed(const Duration(milliseconds: 800));

    result.fold(
      (failure) {
        stateTarget.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        if (response.data!.isEmpty) {
          stateTarget.value = FetchStateEnum.empty;
        } else {
          stateTarget.value = FetchStateEnum.loaded;
          listLabScheduleEntity.value = response;
        }
      },
    );
  }

  Future<void> fetchLabScheduleDetail({required String labScheduleId}) async {
    final result = await fetchLabScheduleDetailUsecase.execute(
      labScheduleId: labScheduleId,
    );
    fetchLabScheduleDetailState.value = FetchStateEnum.loading;
    result.fold(
      (failure) {
        fetchLabScheduleDetailState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        fetchLabScheduleDetailState.value = FetchStateEnum.loaded;
        labScheduleEntity.value = response;
      },
    );
  }

  Future<void> updateLabSchedule({
    required UpdateLabScheduleRequestEntity data,
    required String labScheduleId,
  }) async {
    final result = await updateLabScheduleUsecase.execute(
      data: data,
      labScheduleId: labScheduleId,
    );
    updateLabScheduleState.value = FetchStateEnum.loading;
    result.fold(
      (failure) {
        updateLabScheduleState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        updateLabScheduleState.value = FetchStateEnum.loaded;
        labScheduleEntity.value = response;
      },
    );
  }

  Future<void> approveLabSchedule({
    required ApprovalLabScheduleRequestEntity data,
    required String labScheduleId,
  }) async {
    final result = await approveLabScheduleUsecase.execute(
      data: data,
      labScheduleId: labScheduleId,
    );
    approveLabScheduleState.value = FetchStateEnum.loading;
    result.fold(
      (failure) {
        approveLabScheduleState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        approveLabScheduleState.value = FetchStateEnum.loaded;
        labScheduleEntity.value = response;
      },
    );
  }

  Future<void> deleteLabSchedule({required String labScheduleId}) async {
    final result = await deleteLabScheduleUsecase.execute(
      labScheduleId: labScheduleId,
    );
    deleteLabScheduleState.value = FetchStateEnum.loading;
    result.fold(
      (failure) {
        deleteLabScheduleState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        deleteLabScheduleState.value = FetchStateEnum.loaded;
        labScheduleEntity.value = response;
      },
    );
  }
}
