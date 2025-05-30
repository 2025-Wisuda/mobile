// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/state_manager.dart';

// Project imports:
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/course/data/data.dart';
import 'package:mobile/features/course/domain/domain.dart';

class CourseSessionController extends GetxController {
  final FetchListCourseSessionUsecase fetchListCourseSessionUsecase;
  final FetchCourseSessionDetailUsecase fetchCourseSessionDetailUsecase;
  final CreateCourseSessionUsecase createCourseSessionUsecase;
  final UpdateCourseSessionUsecase updateCourseSessionUsecase;
  final PartialUpdateCourseSessionUsecase partialUpdateCourseSessionUsecase;
  final DeleteCourseSessionUsecase deleteCourseSessionUsecase;

  CourseSessionController({
    required this.fetchListCourseSessionUsecase,
    required this.fetchCourseSessionDetailUsecase,
    required this.createCourseSessionUsecase,
    required this.updateCourseSessionUsecase,
    required this.partialUpdateCourseSessionUsecase,
    required this.deleteCourseSessionUsecase,
  });

  final titleController = Rx<TextEditingController>(TextEditingController());
  final sessionDateController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final startTimeController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final endTimeController = Rx<TextEditingController>(TextEditingController());
  final statusController = Rx<TextEditingController>(TextEditingController());
  final searchCourseSessionController = Rx<TextEditingController>(
    TextEditingController(),
  );

  final titleFocusNode = Rx<FocusNode>(FocusNode());
  final sessionDateFocusNode = Rx<FocusNode>(FocusNode());
  final startTimeFocusNode = Rx<FocusNode>(FocusNode());
  final endTimeFocusNode = Rx<FocusNode>(FocusNode());
  final statusFocusNode = Rx<FocusNode>(FocusNode());
  final searchCourseSessionFocusNode = Rx<FocusNode>(FocusNode());

  final selectedSessionDate = Rxn<DateTime>();
  final selectedStartTime = Rxn<TimeOfDay>();
  final selectedEndTime = Rxn<TimeOfDay>();

  final titleError = RxString('');
  final sessionDateError = RxString('');
  final startTimeError = RxString('');
  final endTimeError = RxString('');
  final statusError = RxString('');
  final searchCourseSessionError = RxString('');

  final isSaveCourseSessionRequestFormValid = RxBool(false);
  final isSearchCourseSessionActive = RxBool(false);

  final fetchListCourseSessionState = Rx(FetchStateEnum.initial);
  final fetchCourseSessionDetailState = Rx(FetchStateEnum.initial);
  final createCourseSessionState = Rx(FetchStateEnum.initial);
  final updateCourseSessionState = Rx(FetchStateEnum.initial);
  final partialUpdateCourseSessionState = Rx(FetchStateEnum.initial);
  final deleteCourseSessionState = Rx(FetchStateEnum.initial);

  final errorMessage = RxString('');

  final courseSessionEntity = Rxn<CourseSessionEntity?>();
  final listCourseSessionEntity = Rxn<ListCourseSessionEntity?>();

  void toggleSearchCourseSession() {
    isSearchCourseSessionActive.value = !isSearchCourseSessionActive.value;
    if (isSearchCourseSessionActive.value) {
      searchCourseSessionFocusNode.value.requestFocus();
    } else {
      searchCourseSessionFocusNode.value.unfocus();
    }
  }

  void clearSearchCourseSession() {
    searchCourseSessionController.value.clear();
    isSearchCourseSessionActive.value = false;
  }

  void clearSaveCourseSession() {
    titleController.value.clear();
    sessionDateController.value.clear();
    startTimeController.value.clear();
    endTimeController.value.clear();
    statusController.value.clear();
    titleError.value = '';
    sessionDateError.value = '';
    startTimeError.value = '';
    endTimeError.value = '';
    statusError.value = '';
  }

  Future<void> fetchListCourseSession({
    required CourseSessionFilterParamsModel filterParams,
  }) async {
    final result = await fetchListCourseSessionUsecase.execute(
      params: filterParams,
    );
    fetchListCourseSessionState.value = FetchStateEnum.loading;

    result.fold(
      (failure) {
        fetchListCourseSessionState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) {
        if (response.data!.isEmpty) {
          fetchListCourseSessionState.value = FetchStateEnum.empty;
        } else {
          fetchListCourseSessionState.value = FetchStateEnum.loaded;
          listCourseSessionEntity.value = response;
        }
      },
    );
  }

  Future<void> fetchCourseSessionDetail({
    required String courseSessionId,
  }) async {
    final result = await fetchCourseSessionDetailUsecase.execute(
      courseSessionId: courseSessionId,
    );
    fetchCourseSessionDetailState.value = FetchStateEnum.loading;

    result.fold(
      (failure) {
        fetchCourseSessionDetailState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) {
        fetchCourseSessionDetailState.value = FetchStateEnum.loaded;
        courseSessionEntity.value = response;
      },
    );
  }

  Future<void> createCourseSession({
    required SaveCourseSessionRequestEntity data,
  }) async {
    final result = await createCourseSessionUsecase.execute(data: data);
    createCourseSessionState.value = FetchStateEnum.loading;

    result.fold(
      (failure) {
        createCourseSessionState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) {
        createCourseSessionState.value = FetchStateEnum.loaded;
        courseSessionEntity.value = response;
      },
    );
  }

  Future<void> updateCourseSession({
    required SaveCourseSessionRequestEntity data,
    required String courseSessionId,
  }) async {
    final result = await updateCourseSessionUsecase.execute(
      data: data,
      courseSessionId: courseSessionId,
    );
    updateCourseSessionState.value = FetchStateEnum.loading;

    result.fold(
      (failure) {
        updateCourseSessionState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) {
        updateCourseSessionState.value = FetchStateEnum.loaded;
        courseSessionEntity.value = response;
      },
    );
  }

  Future<void> partialUpdateCourseSession({
    required Map<String, dynamic> data,
    required String courseSessionId,
  }) async {
    final result = await partialUpdateCourseSessionUsecase.execute(
      data: data,
      courseSessionId: courseSessionId,
    );
    partialUpdateCourseSessionState.value = FetchStateEnum.loading;

    result.fold(
      (failure) {
        partialUpdateCourseSessionState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) {
        partialUpdateCourseSessionState.value = FetchStateEnum.loaded;
        courseSessionEntity.value = response;
      },
    );
  }

  Future<void> deleteCourseSession({required String courseSessionId}) async {
    final result = await deleteCourseSessionUsecase.execute(
      courseSessionId: courseSessionId,
    );
    deleteCourseSessionState.value = FetchStateEnum.loading;

    result.fold(
      (failure) {
        deleteCourseSessionState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (_) {
        deleteCourseSessionState.value = FetchStateEnum.loaded;
        courseSessionEntity.value = null;
      },
    );
  }
}
