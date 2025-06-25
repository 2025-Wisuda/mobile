import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/features/user/domain/entities/user_entity.dart';
import 'package:mobile/shared/controllers/base_form_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart' show DateHelper;

class CourseFormController extends BaseFormController<SaveCourseRequestEntity,
    BaseResponseEntity<CourseEntity>> {
  final CreateCourseUsecase _createCourseUsecase;
  final PartialUpdateCourseUsecase _partialUpdateCourseUsecase;

  CourseFormController(
    this._createCourseUsecase,
    this._partialUpdateCourseUsecase,
  );

  final Rxn<CourseEntity> _course = Rxn<CourseEntity>();
  CourseEntity? get course => _course.value;

  final RxnString _courseId = RxnString();

  final selectedStartDate = Rxn<DateTime>();
  final selectedEndDate = Rxn<DateTime>();
  final selectedStudents = <String>[].obs;
  final selectedTeachingAssistants = <String>[].obs;
  final selectedStudentUsers = <UserEntity>[].obs;
  final selectedTeachingAssistantUsers = <UserEntity>[].obs;
  final selectedImagePath = RxnString();
  final hasDeletedNetworkImage = false.obs;

  @override
  void onInit() {
    initializeControllers([
      'title',
      'description',
      'enrollKey',
      'startDate',
      'endDate',
      'students',
      'teachingAssistants',
    ]);
    super.onInit();
  }

  @override
  String get baseStateKey => 'saveCourse';

  @override
  FormMode get mode =>
      _courseId.value != null ? FormMode.update : FormMode.create;

  @override
  List<String> get requiredFields => ['title', 'startDate', 'endDate'];

  @override
  Future<Either<Failure, BaseResponseEntity<CourseEntity>>> executeUsecase(
      SaveCourseRequestEntity entity) async {
    if (mode == FormMode.create) {
      return await _createCourseUsecase.execute(data: entity);
    } else {
      return await _partialUpdateCourseUsecase.execute(
        courseId: _courseId.value!,
        data: entity,
      );
    }
  }

  @override
  SaveCourseRequestEntity buildEntity() {
    return SaveCourseRequestEntity(
      title: _getNonEmptyValue('title'),
      description: _getNonEmptyValue('description'),
      enrollKey: _getNonEmptyValue('enrollKey'),
      startDate: selectedStartDate.value != null
          ? DateHelper.formatIsoDate(date: selectedStartDate.value!)
          : null,
      endDate: selectedEndDate.value != null
          ? DateHelper.formatIsoDate(date: selectedEndDate.value!)
          : null,
      students: selectedStudents.isNotEmpty ? selectedStudents : null,
      teachingAssistants: selectedTeachingAssistants.isNotEmpty
          ? selectedTeachingAssistants
          : null,
      image: selectedImagePath.value,
    );
  }

  String? _getNonEmptyValue(String fieldName) {
    final value = getControllerValue(fieldName).trim();
    return value.isEmpty ? null : value;
  }

  @override
  void onSubmitSuccess(dynamic response) {
    super.onSubmitSuccess(response);

    if (response is BaseResponseEntity<CourseEntity> && response.data != null) {
      _course.value = response.data;
      _courseId.value = response.data!.id;
    }

    Future.microtask(() {
      clearForm();
    });
  }

  String? get courseId => _courseId.value;
  RxList<String> get studentsId => selectedStudents;
  RxList<String> get teachingAssistantsId => selectedTeachingAssistants;

  @override
  Map<String, String?> validateAllFields() {
    final title = getControllerValue('title');
    final startDate = selectedStartDate.value;
    final endDate = selectedEndDate.value;

    final errors = {
      'title': validateRequired(title, 'Title'),
      'startDate': validateDateRequired(startDate, 'Start Date') ??
          validateDateRange(startDate, endDate),
      'endDate': validateDateRequired(endDate, 'End Date') ??
          validateDateRange(startDate, endDate),
    };

    return errors..removeWhere((_, value) => value == null);
  }

  void addStudent(String studentId, UserEntity user) {
    if (!selectedStudents.contains(studentId)) {
      selectedStudents.add(studentId);
      selectedStudentUsers.add(user);
    }
  }

  void removeStudent(String studentId) {
    selectedStudents.remove(studentId);
    selectedStudentUsers.removeWhere((user) => user.id == studentId);
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

  void selectImage(String imagePath) {
    selectedImagePath.value = imagePath;
    hasDeletedNetworkImage.value = false;
  }

  void removeImage() {
    selectedImagePath.value = null;
    hasDeletedNetworkImage.value = true;
  }

  void loadCourseForUpdate(CourseEntity course) {
    _course.value = course;
    _courseId.value = course.id;

    autoPopulateForm(course);

    if (course.title != null) {
      getController('title').text = course.title!;
    }

    if (course.description != null) {
      getController('description').text = course.description!;
    }

    if (course.enrollKey != null) {
      getController('enrollKey').text = course.enrollKey!;
    }
    if (course.startDate != null) {
      selectedStartDate.value = course.startDate;
    }

    if (course.endDate != null) {
      selectedEndDate.value = course.endDate;
    }

    selectedStudents.clear();
    selectedStudentUsers.clear();
    if (course.students != null) {
      final studentIds = course.students!.map((s) => s.id!).toList();
      selectedStudents.addAll(studentIds);
      selectedStudentUsers.addAll(course.students!);
    }

    selectedTeachingAssistants.clear();
    selectedTeachingAssistantUsers.clear();
    if (course.teachingAssistants != null) {
      final taIds = course.teachingAssistants!.map((ta) => ta.id!).toList();
      selectedTeachingAssistants.addAll(taIds);
      selectedTeachingAssistantUsers.addAll(course.teachingAssistants!);
    }

    selectedImagePath.value = null;
    hasDeletedNetworkImage.value = false;
  }

  void resetForCreate() {
    _courseId.value = null;
    clearForm();
  }

  final currentStep = 0.obs;
  final isLastStep = false.obs;
  final isStudentsOpen = false.obs;
  final isTeachingAssistantsOpen = false.obs;

  void nextStep() {
    if (currentStep.value < 2) {
      currentStep.value++;
    } else {}
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
    isStudentsOpen.value = false;
    isTeachingAssistantsOpen.value = false;
  }

  void toggleStudents() {
    isStudentsOpen.value = !isStudentsOpen.value;
  }

  void toggleTeachingAssistants() {
    isTeachingAssistantsOpen.value = !isTeachingAssistantsOpen.value;
  }

  @override
  void clearForm() {
    super.clearForm();
    selectedStartDate.value = null;
    selectedEndDate.value = null;
    selectedStudents.clear();
    selectedTeachingAssistants.clear();
    selectedStudentUsers.clear();
    selectedTeachingAssistantUsers.clear();
    selectedImagePath.value = null;
    hasDeletedNetworkImage.value = false;
  }

  Future<void> createCourse() => submitForm();
  Future<void> updateCourse() => submitForm();

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectImage(pickedFile.path);
    }
  }

  Future<void> pickImageFromCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      selectImage(pickedFile.path);
    }
  }

  void deleteImage() => removeImage();

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
        });
      }
    }

    Future.microtask(() {
      for (String fieldName in requiredFields) {
        if (['startDate', 'endDate'].contains(fieldName)) {
          continue;
        }

        if (getControllerKeys().contains(fieldName)) {
          getController(fieldName).addListener(updateFormValid);
        }
      }

      if (requiredFields.contains('startDate')) {
        selectedStartDate.listen((_) => updateFormValid());
      }

      if (requiredFields.contains('endDate')) {
        selectedEndDate.listen((_) => updateFormValid());
      }

      updateFormValid();
    });

    return reactive;
  }
}
