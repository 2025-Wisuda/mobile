// Dart imports:
import 'dart:io';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/course/data/models/course_filter_params_model.dart';
import 'package:mobile/features/course/domain/domain.dart';
import 'package:mobile/shared/databases/user_database.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/routes/route.dart';

class CourseController extends GetxController {
  final FetchListCourseUsecase fetchListCourseUsecase;
  final FetchCourseDetailUsecase fetchCourseDetailUsecase;
  final CreateCourseUsecase createCourseUsecase;
  final UpdateCourseUsecase updateCourseUsecase;
  final PartialUpdateCourseUsecase partialUpdateCourseUsecase;
  final DeleteCourseUsecase deleteCourseUsecase;
  final EnrollCourseUsecase enrollCourseUsecase;

  CourseController({
    required this.fetchListCourseUsecase,
    required this.fetchCourseDetailUsecase,
    required this.createCourseUsecase,
    required this.updateCourseUsecase,
    required this.partialUpdateCourseUsecase,
    required this.deleteCourseUsecase,
    required this.enrollCourseUsecase,
  });

  final titleController = Rx<TextEditingController>(TextEditingController());
  final descriptionController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final startDateController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final endDateController = Rx<TextEditingController>(TextEditingController());
  final studentsController = Rx<TextEditingController>(TextEditingController());
  final teachingAssistantsController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final enrollKeyController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final searchCourseController = Rx<TextEditingController>(
    TextEditingController(),
  );

  final titleFocusNode = Rx<FocusNode>(FocusNode());
  final descriptionFocusNode = Rx<FocusNode>(FocusNode());
  final startDateFocusNode = Rx<FocusNode>(FocusNode());
  final endDateFocusNode = Rx<FocusNode>(FocusNode());
  final studentsFocusNode = Rx<FocusNode>(FocusNode());
  final teachingAssistantsFocusNode = Rx<FocusNode>(FocusNode());
  final enrollKeyFocusNode = Rx<FocusNode>(FocusNode());
  final searchCourseFocusNode = Rx<FocusNode>(FocusNode());

  final titleError = RxString('');
  final descriptionError = RxString('');
  final startDateError = RxString('');
  final endDateError = RxString('');
  final studentsError = RxString('');
  final teachingAssistantsError = RxString('');
  final enrollKeyError = RxString('');
  final searchCourseError = RxString('');

  final isSaveCourseRequestFormValid = RxBool(false);
  final isSearchCourseActive = RxBool(false);
  final fetchListCourseState = Rx(FetchStateEnum.initial);
  final filterCourseState = Rx(FetchStateEnum.initial);
  final fetchCourseDetailState = Rx(FetchStateEnum.initial);
  final createCourseState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);
  final updateCourseState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);
  final partialUpdateCourseState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);
  final deleteCourseState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);
  final enrollCourseState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);

  final errorMessage = RxString('');
  final courseEntity = Rxn<CourseEntity?>();
  final listCourseEntity = Rxn<ListCourseEntity?>();
  final selectedStudentId = Rx<String?>(null);
  final selectedTeachingAssistantId = Rx<String?>(null);
  RxList<String> studentsId = <String>[].obs;
  RxList<String> teachingAssistantsId = <String>[].obs;
  final selectedStartDate = Rx<DateTime?>(null);
  final selectedEndDate = Rx<DateTime?>(null);
  final courseId = RxString('');

  final currentPage = RxInt(1);
  final isLastPage = RxBool(false);
  final isLoadingMore = RxBool(false);

  final selectedOrdering = Rxn<String>();
  final selectedStartDateFilter = Rxn<DateTime>();
  final selectedEndDateFilter = Rxn<DateTime>();

  final selectedImage = Rxn<File>();
  final isGridView = RxBool(true);
  final userId = RxString('');
  final userGroup = RxString('');
  final isFormEnrollValid = RxBool(false);
  final currentStep = RxInt(0);
  final isStudentsOpen = RxBool(false);
  final isTeachingAssistantsOpen = RxBool(false);

  final _debounce = Rxn<Function>();

  @override
  void onInit() {
    fetchUserId();
    fetchUserGroup();
    super.onInit();
  }

  @override
  void onClose() {
    titleController.value.dispose();
    descriptionController.value.dispose();
    startDateController.value.dispose();
    endDateController.value.dispose();
    studentsController.value.dispose();
    teachingAssistantsController.value.dispose();
    enrollKeyController.value.dispose();
    searchCourseController.value.dispose();

    titleFocusNode.value.dispose();
    descriptionFocusNode.value.dispose();
    startDateFocusNode.value.dispose();
    endDateFocusNode.value.dispose();
    studentsFocusNode.value.dispose();
    teachingAssistantsFocusNode.value.dispose();
    enrollKeyFocusNode.value.dispose();
    searchCourseFocusNode.value.dispose();

    super.onClose();
  }

  void validateTitle(String value) {
    titleError.value =
        value.isEmpty ? i18n.tr('features.course.validator.title.empty') : '';
    validateSaveCourseRequest();
  }

  void validateStartDate(String value) {
    startDateError.value =
        value.isEmpty
            ? i18n.tr('features.course.validator.startDate.empty')
            : '';
    validateSaveCourseRequest();
  }

  void validateEndDate(String value) {
    endDateError.value =
        value.isEmpty ? i18n.tr('features.course.validator.endDate.empty') : '';
    validateSaveCourseRequest();
  }

  void validateSaveCourseRequest() {
    isSaveCourseRequestFormValid.value =
        titleError.value.isEmpty &&
        startDateError.value.isEmpty &&
        endDateError.value.isEmpty &&
        titleController.value.text.isNotEmpty &&
        startDateController.value.text.isNotEmpty &&
        endDateController.value.text.isNotEmpty;
  }

  void validateEnrollKey(String value) {
    enrollKeyError.value =
        value.isEmpty
            ? i18n.tr('features.course.validator.enrollKey.empty')
            : '';
    validateEnroll();
  }

  void validateEnroll() {
    isFormEnrollValid.value =
        enrollKeyError.value.isEmpty &&
        enrollKeyController.value.text.isNotEmpty;
  }

  void toggleSearchCourse() {
    isSearchCourseActive.value = !isSearchCourseActive.value;
    if (isSearchCourseActive.value) {
      searchCourseFocusNode.value.requestFocus();
    } else {
      searchCourseFocusNode.value.unfocus();
    }
  }

  void clearSearchCourse() {
    searchCourseController.value.clear();
    isSearchCourseActive.value = false;
  }

  void clearSaveCourse() {
    titleController.value.clear();
    descriptionController.value.clear();
    startDateController.value.clear();
    endDateController.value.clear();
    studentsController.value.clear();
    teachingAssistantsController.value.clear();
    enrollKeyController.value.clear();
    searchCourseController.value.clear();

    titleError.value = '';
    descriptionError.value = '';
    startDateError.value = '';
    endDateError.value = '';
    studentsError.value = '';
    teachingAssistantsError.value = '';
    enrollKeyError.value = '';
    searchCourseError.value = '';

    selectedImage.value = null;
    selectedStudentId.value = null;
    selectedTeachingAssistantId.value = null;
    studentsId.clear();
    teachingAssistantsId.clear();

    isSaveCourseRequestFormValid.value = false;
    isFormEnrollValid.value = false;
    isSearchCourseActive.value = false;
    isGridView.value = true;

    selectedStartDate.value = null;
    selectedEndDate.value = null;
    selectedOrdering.value = null;
    selectedStartDateFilter.value = null;
    selectedEndDateFilter.value = null;

    currentPage.value = 1;
    isLastPage.value = false;
    isLoadingMore.value = false;
    errorMessage.value = '';
  }

  void resetState() {
    fetchListCourseState.value = FetchStateEnum.initial;
    filterCourseState.value = FetchStateEnum.initial;
    fetchCourseDetailState.value = FetchStateEnum.initial;
    createCourseState.value = SubmitStateEnum.initial;
    updateCourseState.value = SubmitStateEnum.initial;
    partialUpdateCourseState.value = SubmitStateEnum.initial;
    deleteCourseState.value = SubmitStateEnum.initial;
    enrollCourseState.value = SubmitStateEnum.initial;
  }

  void setImage(File? image) {
    selectedImage.value = image;
  }

  void toggleStudents() {
    isStudentsOpen.value = !isStudentsOpen.value;
    if (isStudentsOpen.value) isTeachingAssistantsOpen.value = false;
  }

  void toggleTeachingAssistants() {
    isTeachingAssistantsOpen.value = !isTeachingAssistantsOpen.value;
    if (isTeachingAssistantsOpen.value) isStudentsOpen.value = false;
  }

  void addStudentId(String id) {
    if (!studentsId.contains(id)) {
      studentsId.value = [...studentsId, id];
    }
  }

  void nextStep() {
    if (currentStep.value < 2) {
      currentStep.value++;
    }
  }

  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
    }
  }

  bool isLastStep() {
    return currentStep.value == 2;
  }

  Future<void> fetchUserId() async {
    final id = await UserDatabase.getUserId();
    if (id != null) {
      userId.value = id;
    }
  }

  Future<void> fetchUserGroup() async {
    final group = await UserDatabase.getUserGroup();
    if (group != null) {
      userGroup.value = group.toLowerCase();
    }
  }

  Future<void> fetchListCourse({
    required CourseFilterParamsModel filterParams,
    bool isLoadMore = false,
    required Rx<FetchStateEnum> stateTarget,
  }) async {
    if (isLoadMore &&
        (isLoadingMore.value ||
            stateTarget.value == FetchStateEnum.loading ||
            currentPage.value >=
                (listCourseEntity.value?.meta?.pagination?.totalPages ?? 1))) {
      return;
    }

    if (isLoadMore) {
      isLoadingMore.value = true;
      currentPage.value += 1;
    } else {
      stateTarget.value = FetchStateEnum.loading;
      currentPage.value = 1;
      isLastPage.value = false;
    }

    final result = await fetchListCourseUsecase.execute(
      params: filterParams.copyWith(page: currentPage.value),
    );

    if (isLoadMore) {
      isLoadingMore.value = false;
    }

    result.fold(
      (failure) {
        if (isLoadMore) {
          currentPage.value -= 1;
        } else {
          stateTarget.value = FetchStateEnum.error;
        }
        errorMessage.value = failure.message;
      },
      (response) {
        if (isLoadMore) {
          final currentData = listCourseEntity.value?.data ?? [];
          listCourseEntity.value = listCourseEntity.value?.copyWith(
            data: [...currentData, ...response.data!],
          );
        } else {
          if (response.data!.isEmpty) {
            stateTarget.value = FetchStateEnum.empty;
          } else {
            stateTarget.value = FetchStateEnum.loaded;
            listCourseEntity.value = response;
          }
        }

        if (response.meta?.pagination?.currentPage ==
            response.meta?.pagination?.totalPages) {
          isLastPage.value = true;
        }
      },
    );
  }

  void executeFetchListCourseAlreadyEnroll() {
    if (_debounce.value != null) {
      _debounce.value!.call();
      return;
    }

    fetchUserId();
    _debounce.value = () {
      final userId = this.userId.value;
      fetchListCourse(
        filterParams: CourseFilterParamsModel(
          page: 1,
          pageSize: 10,
          userId: userId,
        ),
        stateTarget: filterCourseState,
      );
      Future.delayed(const Duration(seconds: 5), () {
        _debounce.value = null;
      });
    };

    _debounce.value!.call();
  }

  Future<void> fetchCourseDetail({required String courseId}) async {
    final result = await fetchCourseDetailUsecase.execute(courseId: courseId);
    fetchCourseDetailState.value = FetchStateEnum.loading;
    await Future.delayed(const Duration(seconds: 3));

    result.fold(
      (failure) {
        fetchCourseDetailState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) {
        fetchCourseDetailState.value = FetchStateEnum.loaded;
        courseEntity.value = response;
      },
    );
  }

  void executeFetchCourseDetail(String courseId) {
    if (_debounce.value != null) {
      _debounce.value!.call();
      return;
    }

    _debounce.value = () {
      fetchCourseDetail(courseId: courseId);
      Future.delayed(const Duration(seconds: 5), () {
        _debounce.value = null;
      });
    };

    _debounce.value!.call();
  }

  void executeFillFormForUpdate() {
    courseId.value = courseEntity.value?.id ?? '';
    titleController.value.text = courseEntity.value?.title ?? '';
    descriptionController.value.text = courseEntity.value?.description ?? '';
    startDateController.value.text = DateHelper.formatDayMonthYear(
      date: courseEntity.value?.startDate,
    );
    endDateController.value.text = DateHelper.formatDayMonthYear(
      date: courseEntity.value?.endDate,
    );
    enrollKeyController.value.text = courseEntity.value?.enrollKey ?? '';
    studentsId.value =
        courseEntity.value?.students
            ?.map((e) => e.id)
            .whereType<String>()
            .toList() ??
        [];
    teachingAssistantsId.value =
        courseEntity.value?.teachingAssistants
            ?.map((e) => e.id)
            .whereType<String>()
            .toList() ??
        [];

    selectedStartDate.value = courseEntity.value?.startDate;
    selectedEndDate.value = courseEntity.value?.endDate;
  }

  Future<void> createCourse({required SaveCourseRequestEntity data}) async {
    final result = await createCourseUsecase.execute(data: data);
    final context = Get.context;
    createCourseState.value = SubmitStateEnum.loading;
    result.fold(
      (failure) {
        createCourseState.value = SubmitStateEnum.failure;
        errorMessage.value = failure.message;
        context?.showErrorSnackbar(errorMessage.value);
        enrollCourseState.value = SubmitStateEnum.initial;
        errorMessage.value = '';
      },
      (response) {
        createCourseState.value = SubmitStateEnum.success;
        courseEntity.value = response;
        context?.showSuccessSnackbar(
          i18n.tr('features.course.createCourse.success.default'),
        );
        clearSaveCourse();
        resetState();
        currentStep.value = 0;
        isSaveCourseRequestFormValid.value = false;
      },
    );
  }

  void executeCreateCourse() {
    if (_debounce.value != null) {
      _debounce.value!.call();
      return;
    }
    _debounce.value = () {
      createCourse(
        data: SaveCourseRequestEntity(
          title: titleController.value.text,
          description: descriptionController.value.text,
          startDate:
              selectedStartDate.value != null
                  ? DateHelper.formatIsoDate(date: selectedStartDate.value!)
                  : startDateController.value.text,
          endDate:
              selectedEndDate.value != null
                  ? DateHelper.formatIsoDate(date: selectedEndDate.value!)
                  : endDateController.value.text,
          enrollKey: enrollKeyController.value.text,
          students: studentsId,
          image: selectedImage.value,
          teachingAssistants: teachingAssistantsId,
        ),
      );
      Future.delayed(const Duration(seconds: 5), () {
        _debounce.value = null;
      });
    };
    _debounce.value!.call();
  }

  Future<void> updateCourse({
    required SaveCourseRequestEntity data,
    required String courseId,
  }) async {
    final result = await updateCourseUsecase.execute(
      data: data,
      courseId: courseId,
    );
    final context = Get.context;
    updateCourseState.value = SubmitStateEnum.loading;
    result.fold(
      (failure) {
        updateCourseState.value = SubmitStateEnum.failure;
        errorMessage.value = failure.message;
        context?.showErrorSnackbar(errorMessage.value);
        errorMessage.value = '';
      },
      (response) {
        updateCourseState.value = SubmitStateEnum.success;
        courseEntity.value = response;
        context?.showSuccessSnackbar(
          i18n.tr('features.course.updateCourse.success.default'),
        );
        clearSaveCourse();
        currentStep.value = 0;
        Get.close(2);
        Get.toNamed(AppRoute.courseDetail, parameters: {'id': courseId});
        executeFetchCourseDetail(courseId);
        isSaveCourseRequestFormValid.value = false;
      },
    );
  }

  void executeUpdateCourse({required String courseId}) {
    if (_debounce.value != null) {
      _debounce.value!.call();
      return;
    }
    _debounce.value = () {
      updateCourse(
        courseId: courseId,
        data: SaveCourseRequestEntity(
          title: titleController.value.text,
          description: descriptionController.value.text,
          startDate:
              selectedStartDate.value != null
                  ? DateHelper.formatIsoDate(date: selectedStartDate.value!)
                  : startDateController.value.text,
          endDate:
              selectedEndDate.value != null
                  ? DateHelper.formatIsoDate(date: selectedEndDate.value!)
                  : endDateController.value.text,
          enrollKey: enrollKeyController.value.text,
          students: studentsId,
          image: selectedImage.value,
          teachingAssistants: teachingAssistantsId,
        ),
      );
      Future.delayed(const Duration(seconds: 5), () {
        _debounce.value = null;
      });
    };

    _debounce.value!.call();
  }

  Future<void> partialUpdateCourse({
    required Map<String, dynamic> data,
    required String courseId,
  }) async {
    final result = await partialUpdateCourseUsecase.execute(
      data: data,
      courseId: courseId,
    );
    partialUpdateCourseState.value = SubmitStateEnum.loading;
    result.fold(
      (failure) {
        partialUpdateCourseState.value = SubmitStateEnum.failure;
        errorMessage.value = failure.message;
      },
      (response) {
        partialUpdateCourseState.value = SubmitStateEnum.success;
        courseEntity.value = response;
      },
    );
  }

  Future<void> deleteCourse({required String courseId}) async {
    final result = await deleteCourseUsecase.execute(courseId: courseId);
    deleteCourseState.value = SubmitStateEnum.loading;
    result.fold(
      (failure) {
        deleteCourseState.value = SubmitStateEnum.failure;
        errorMessage.value = failure.message;
      },
      (_) {
        deleteCourseState.value = SubmitStateEnum.success;
        courseEntity.value = null;
      },
    );
  }

  Future<void> enrollCourse({
    required EnrollCourseEntity data,
    required String courseId,
  }) async {
    final context = Get.context;
    enrollCourseState.value = SubmitStateEnum.loading;
    final result = await enrollCourseUsecase.execute(
      data: data,
      courseId: courseId,
    );
    result.fold(
      (failure) {
        enrollCourseState.value = SubmitStateEnum.failure;
        errorMessage.value = failure.message;
        context?.showErrorSnackbar(errorMessage.value);
        enrollCourseState.value = SubmitStateEnum.initial;
        errorMessage.value = '';
      },
      (_) {
        enrollCourseState.value = SubmitStateEnum.success;
        context?.showSuccessSnackbar(
          i18n.tr('features.course.enrollCourse.success.default'),
        );
        clearSaveCourse();
        enrollCourseState.value = SubmitStateEnum.initial;
        Get.offNamed(AppRoute.courseDetail, parameters: {'id': courseId});
      },
    );
  }

  void executeEnrollCourse(String courseId) {
    if (_debounce.value != null) {
      _debounce.value!.call();
      return;
    }
    _debounce.value = () {
      enrollCourse(
        data: EnrollCourseEntity(enrollKey: enrollKeyController.value.text),
        courseId: courseId,
      );
      Future.delayed(const Duration(seconds: 5), () {
        _debounce.value = null;
      });
    };

    _debounce.value!.call();
  }

  void applyFilters({
    String? ordering,
    DateTime? startDate,
    DateTime? endDate,
    required Rx<FetchStateEnum> stateTarget,
  }) {
    selectedOrdering.value = ordering;
    selectedStartDateFilter.value = startDate;
    selectedEndDateFilter.value = endDate;

    fetchListCourse(
      filterParams: CourseFilterParamsModel(
        ordering: ordering,
        startDate: startDate != null ? _formatDate(startDate) : null,
        endDate: endDate != null ? _formatDate(endDate) : null,
        page: 1,
        pageSize: 10,
      ),
      stateTarget: stateTarget,
    );
  }

  void clearFilters({required Rx<FetchStateEnum> stateTarget}) {
    selectedOrdering.value = null;
    selectedStartDateFilter.value = null;
    selectedEndDateFilter.value = null;

    fetchListCourse(
      filterParams: CourseFilterParamsModel(page: 1, pageSize: 10),
      stateTarget: stateTarget,
    );
  }

  String _formatDate(DateTime date) {
    return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  Future<void> pickStartDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate:
          selectedEndDate.value?.subtract(const Duration(days: 1)) ??
          DateTime(2100),
    );
    if (pickedDate != null) {
      startDateController.value.text = DateHelper.formatDayMonthYear(
        date: pickedDate,
      );
      selectedStartDate.value = pickedDate;
      validateStartDate(DateHelper.formatIsoDate(date: pickedDate));
    }
  }

  Future<void> pickEndDate(BuildContext context) async {
    if (selectedStartDate.value == null) return;

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedStartDate.value!.add(const Duration(days: 1)),
      firstDate: selectedStartDate.value!.add(const Duration(days: 1)),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      endDateController.value.text = DateHelper.formatDayMonthYear(
        date: pickedDate,
      );
      selectedEndDate.value = pickedDate;
      validateEndDate(DateHelper.formatIsoDate(date: pickedDate));
    }
  }

  void initForm({bool isEdit = false}) {
    isSaveCourseRequestFormValid.value = isEdit;
  }
}
