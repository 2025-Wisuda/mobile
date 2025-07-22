import 'package:flutter/material.dart';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/features/user/domain/entities/user_entity.dart';
import 'package:mobile/shared/controllers/base_form_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart' show DateHelper, TimeHelper;

import 'package:mobile/features/course/domain/helpers/course_helpers.dart'
    show CourseHelpers;

class CourseSessionFormController extends BaseFormController<
    SaveCourseSessionRequestEntity, BaseResponseEntity<CourseSessionEntity>> {
  final CreateCourseSessionUsecase _createCourseSessionUsecase;
  final PartialUpdateCourseSessionUsecase _partialUpdateCourseSessionUsecase;

  CourseSessionFormController(
    this._createCourseSessionUsecase,
    this._partialUpdateCourseSessionUsecase,
  );

  final RxnString _courseId = RxnString();
  final RxnString _courseSessionId = RxnString();
  final selectedDate = Rxn<DateTime>();
  final selectedTeachingAssistants = <String>[].obs;
  final selectedTeachingAssistantUsers = <UserEntity>[].obs;
  final startTimeReactive = ''.obs;
  final endTimeReactive = ''.obs;

  final Rxn<CourseEntity> _courseInfo = Rxn<CourseEntity>();

  @override
  void onInit() {
    initializeControllers([
      'title',
      'description',
      'type',
      'date',
      'startTime',
      'endTime',
      'status',
      'teachingAssistants',
    ]);
    super.onInit();
  }

  @override
  String get baseStateKey => 'saveCourseSession';

  @override
  FormMode get mode =>
      _courseSessionId.value != null ? FormMode.update : FormMode.create;

  @override
  List<String> get requiredFields => ['title', 'date', 'startTime', 'endTime'];

  @override
  Future<Either<Failure, BaseResponseEntity<CourseSessionEntity>>>
      executeUsecase(SaveCourseSessionRequestEntity entity) async {
    if (mode == FormMode.create) {
      return await _createCourseSessionUsecase.execute(
        courseId: _courseId.value!,
        data: entity,
      );
    } else {
      return await _partialUpdateCourseSessionUsecase.execute(
        courseId: _courseId.value!,
        courseSessionId: _courseSessionId.value!,
        data: entity,
      );
    }
  }

  @override
  SaveCourseSessionRequestEntity buildEntity() {
    return SaveCourseSessionRequestEntity(
      title: _getNonEmptyValue('title'),
      description: _getNonEmptyValue('description'),
      type: _getNonEmptyValue('type'),
      date: selectedDate.value != null
          ? DateHelper.formatIsoDate(date: selectedDate.value!)
          : null,
      startTime: _getNonEmptyValue('startTime'),
      endTime: _getNonEmptyValue('endTime'),
      status: _getNonEmptyValue('status'),
      teachingAssistants: selectedTeachingAssistants.isNotEmpty
          ? selectedTeachingAssistants
          : null,
    );
  }

  String? _getNonEmptyValue(String fieldName) {
    final value = getControllerValue(fieldName).trim();
    return value.isEmpty ? null : value;
  }

  @override
  void onSubmitSuccess(dynamic response) {
    super.onSubmitSuccess(response);
    Future.microtask(() {
      clearForm();
    });
  }

  String? get courseId => _courseId.value;
  String? get courseSessionId => _courseSessionId.value;
  RxList<String> get teachingAssistantsId => selectedTeachingAssistants;
  CourseEntity? get courseInfo => _courseInfo.value;

  String get startTimeValue => getControllerValue('startTime');
  String get endTimeValue => getControllerValue('endTime');

  @override
  Map<String, String?> validateAllFields() {
    final title = getControllerValue('title');
    final date = selectedDate.value;
    final startTime = getControllerValue('startTime');
    final endTime = getControllerValue('endTime');

    final errors = {
      'title': validateRequired(title, 'Title'),
      'date': validateDateRequired(date, 'Date') ?? validateSessionDate(date),
      'startTime': validateRequired(startTime, 'Start Time') ??
          validateTimeField(startTime, 'Start Time'),
      'endTime': validateRequired(endTime, 'End Time') ??
          validateTimeField(endTime, 'End Time') ??
          validateTimeRange(startTime, endTime),
    };

    return errors..removeWhere((_, value) => value == null);
  }

  String? validateSessionDate(DateTime? date) {
    if (date == null) return null;

    final courseStartDate = _courseInfo.value?.startDate;
    final courseEndDate = _courseInfo.value?.endDate;

    if (!CourseHelpers.isDateWithinCourseRange(
        date, courseStartDate, courseEndDate)) {
      return CourseHelpers.dateOutsideRangeError;
    }

    return null;
  }

  String? validateTimeField(String? value, String fieldName) {
    if (value == null || value.isEmpty) return null;

    if (!TimeHelper.isValidTimeFormat(value)) {
      return CourseHelpers.timeFormatError;
    }

    final time = TimeHelper.parseTimeString(value);
    if (time == null || !TimeHelper.isTimeWithinLabHours(time)) {
      return CourseHelpers.timeOutsideLabHoursError;
    }

    return null;
  }

  String? validateTimeRange(String? startTime, String? endTime) {
    if (startTime == null ||
        startTime.isEmpty ||
        endTime == null ||
        endTime.isEmpty) {
      return null;
    }

    if (!TimeHelper.isEndTimeAfterStartTime(startTime, endTime)) {
      return CourseHelpers.endTimeBeforeStartError;
    }

    return null;
  }

  void selectDate(DateTime date) {
    selectedDate.value = date;
    getController('date').text = DateHelper.formatDayMonthYear(date: date);
  }

  void selectStartTime() async {
    final context = Get.context!;
    TimeOfDay initialTime = TimeHelper.labStartTime;

    final currentStartTime = getControllerValue('startTime').trim();
    if (currentStartTime.isNotEmpty) {
      final parsed = TimeHelper.parseTimeString(currentStartTime);
      if (parsed != null) {
        initialTime = parsed;
      }
    }

    final selectedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (selectedTime != null) {
      final constrainedTime = TimeHelper.constrainToLabHours(selectedTime);
      final timeString = TimeHelper.formatTimeOfDay(constrainedTime);

      getController('startTime').text = timeString;

      if (getControllerValue('endTime').isNotEmpty) {
        reactiveFormValid.refresh();
      }
    }
  }

  void selectEndTime() async {
    final context = Get.context!;
    TimeOfDay initialTime = const TimeOfDay(hour: 9, minute: 0);

    final currentEndTime = getControllerValue('endTime').trim();
    if (currentEndTime.isNotEmpty) {
      final parsed = TimeHelper.parseTimeString(currentEndTime);
      if (parsed != null) {
        initialTime = parsed;
      }
    } else {
      final startTime = getControllerValue('startTime').trim();
      if (startTime.isNotEmpty) {
        final startParsed = TimeHelper.parseTimeString(startTime);
        if (startParsed != null) {
          final startMinutes = startParsed.hour * 60 + startParsed.minute;
          final endMinutes = startMinutes + 90;
          initialTime = TimeOfDay(
            hour: (endMinutes ~/ 60).clamp(0, 23),
            minute: endMinutes % 60,
          );
        }
      }
    }

    final selectedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (selectedTime != null) {
      final constrainedTime = TimeHelper.constrainToLabHours(selectedTime);
      final timeString = TimeHelper.formatTimeOfDay(constrainedTime);

      getController('endTime').text = timeString;

      if (getControllerValue('startTime').isNotEmpty) {
        reactiveFormValid.refresh();
      }
    }
  }

  void setCourseInfo(CourseEntity? course) {
    _courseInfo.value = course;
    if (selectedDate.value != null) {
      selectDate(selectedDate.value!);
    }
  }

  void addTeachingAssistant(String assistantId, UserEntity user) {
    if (!selectedTeachingAssistants.contains(assistantId)) {
      selectedTeachingAssistants.add(assistantId);
      selectedTeachingAssistantUsers.add(user);
    }
  }

  void removeTeachingAssistant(String assistantId) {
    selectedTeachingAssistants.remove(assistantId);
    selectedTeachingAssistantUsers
        .removeWhere((user) => user.id == assistantId);
  }

  void setCourseId(String courseId) {
    _courseId.value = courseId;
  }

  void setCourseSessionId(String? courseSessionId) {
    _courseSessionId.value = courseSessionId;
  }

  void loadCourseSessionForUpdate(CourseSessionEntity courseSession) {
    _courseSessionId.value = courseSession.id;

    setControllerValue('title', courseSession.title ?? '');
    setControllerValue('description', courseSession.description ?? '');
    setControllerValue('type', courseSession.type ?? '');
    setControllerValue('startTime', courseSession.startTime ?? '');
    setControllerValue('endTime', courseSession.endTime ?? '');
    setControllerValue('status', courseSession.status ?? '');

    startTimeReactive.value = courseSession.startTime ?? '';
    endTimeReactive.value = courseSession.endTime ?? '';

    if (courseSession.date != null) {
      selectedDate.value = courseSession.date;
      getController('date').text =
          DateHelper.formatDayMonthYear(date: courseSession.date!);
    }

    selectedTeachingAssistants.clear();
    selectedTeachingAssistantUsers.clear();
    if (courseSession.teachingAssistantIds != null) {
      selectedTeachingAssistants.addAll(courseSession.teachingAssistantIds!);
    }
    if (courseSession.teachingAssistants != null) {
      selectedTeachingAssistantUsers.addAll(courseSession.teachingAssistants!);
    }
  }

  void resetForCreate() {
    _courseSessionId.value = null;
    clearForm();
  }

  @override
  void clearForm() {
    super.clearForm();
    selectedDate.value = null;
    selectedTeachingAssistants.clear();
    selectedTeachingAssistantUsers.clear();
    startTimeReactive.value = '';
    endTimeReactive.value = '';
  }

  Future<void> createCourseSession() => submitForm();
  Future<void> updateCourseSession() => submitForm();
  Future<void> saveCourseSession() => submitForm();

  final currentStep = 0.obs;
  final isLastStep = false.obs;
  final isTeachingAssistantsOpen = false.obs;

  void nextStep() {
    if (currentStep.value < 2) {
      currentStep.value++;
    }
    updateStepState();
  }

  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
    }
    updateStepState();
  }

  void goToStep(int step) {
    currentStep.value = step;
    updateStepState();
  }

  void updateStepState() {
    isLastStep.value = currentStep.value == 2;
  }

  void resetStepper() {
    currentStep.value = 0;
    isLastStep.value = false;
    isTeachingAssistantsOpen.value = false;
    updateStepState();
  }

  void toggleTeachingAssistants() {
    isTeachingAssistantsOpen.value = !isTeachingAssistantsOpen.value;
  }

  @override
  bool get isFormValid {
    final errors = validateAllFields();
    return errors.values.every((error) => error == null);
  }

  RxBool? _customReactiveFormValid;

  @override
  RxBool get reactiveFormValid {
    return _customReactiveFormValid ??= _createCustomReactiveFormValid();
  }

  RxBool _createCustomReactiveFormValid() {
    final reactive = false.obs;

    void updateFormValid() {
      if (Get.isDialogOpen != true && !Get.isOverlaysOpen) {
        Future.microtask(() {
          if (reactive.value != isFormValid) {
            reactive.value = isFormValid;
          }
          startTimeReactive.value = getControllerValue('startTime');
          endTimeReactive.value = getControllerValue('endTime');
        });
      }
    }

    Future.microtask(() {
      for (String fieldName in requiredFields) {
        if (['date'].contains(fieldName)) {
          continue;
        }

        if (getControllerKeys().contains(fieldName)) {
          getController(fieldName).addListener(updateFormValid);
        }
      }

      if (requiredFields.contains('date')) {
        selectedDate.listen((_) => updateFormValid());
      }

      updateFormValid();
    });

    return reactive;
  }
}
