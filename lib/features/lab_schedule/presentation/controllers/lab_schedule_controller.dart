// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/state_manager.dart';

// Project imports:
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/lab_schedule/data/models/lab_schedule_filter_params_model.dart';
import 'package:mobile/features/lab_schedule/domain/domain.dart';
import 'package:mobile/shared/helpers/date_helper.dart';

class LabScheduleController extends GetxController {
  final FetchListLabScheduleUsecase fetchListLabScheduleUsecase;
  final FetchLabScheduleDetailUsecase fetchLabScheduleDetailUsecase;
  final ApproveLabScheduleUsecase approveLabScheduleUsecase;

  LabScheduleController({
    required this.fetchListLabScheduleUsecase,
    required this.fetchLabScheduleDetailUsecase,
    required this.approveLabScheduleUsecase,
  });
  final approvalStatusController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final searchLabScheduleController = Rx<TextEditingController>(
    TextEditingController(),
  );

  final approvalStatusFocusNode = Rx<FocusNode>(FocusNode());
  final searchLabScheduleFocusNode = Rx<FocusNode>(FocusNode());

  final approvalStatusError = RxString('');
  final searchLabScheduleError = RxString('');

  final isApproveLabScheduleFormValid = RxBool(false);

  final fetchListLabScheduleState = Rx(FetchStateEnum.initial);
  final fetchLabScheduleDetailState = Rx(FetchStateEnum.initial);
  final approveLabScheduleState = Rx(FetchStateEnum.initial);
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
      searchLabScheduleFocusNode.value.requestFocus();
    } else {
      searchLabScheduleFocusNode.value.unfocus();
    }
  }

  void clearSearch() {
    searchLabScheduleController.value.clear();
    isSearchActive.value = false;
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

  @override
  void onClose() {
    approvalStatusController.value.dispose();
    searchLabScheduleController.value.dispose();
    approvalStatusFocusNode.value.dispose();
    searchLabScheduleFocusNode.value.dispose();
    approvalStatusError.close();
    searchLabScheduleError.close();
    isApproveLabScheduleFormValid.close();
    fetchListLabScheduleState.close();
    fetchLabScheduleDetailState.close();
    approveLabScheduleState.close();
    searchLabScheduleState.close();
    errorMessage.close();
    labScheduleEntity.close();
    listLabScheduleEntity.close();
    isSearchActive.close();
    scheduleDate.close();
    selectedDate.close();
    focusedDate.close();
    super.onClose();
  }
}
