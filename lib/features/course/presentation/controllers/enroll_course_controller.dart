import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_form_controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';

class EnrollCourseController
    extends BaseFormController<EnrollCourseEntity, dynamic> {
  final EnrollCourseUsecase _enrollCourseUsecase;

  final RxnString _courseId = RxnString();

  EnrollCourseController(this._enrollCourseUsecase);

  @override
  void onInit() {
    super.onInit();

    initializeControllers(['enrollKey']);
  }

  @override
  String get baseStateKey => 'enrollCourse';

  @override
  FormMode get mode => FormMode.update;

  @override
  List<String> get requiredFields => ['enrollKey'];

  @override
  Future<Either<Failure, dynamic>> executeUsecase(
      EnrollCourseEntity entity) async {
    return await _enrollCourseUsecase.execute(
      courseId: _courseId.value ?? '',
      data: entity,
    );
  }

  @override
  EnrollCourseEntity buildEntity() {
    return EnrollCourseEntity(enrollKey: getControllerValue('enrollKey'));
  }

  @override
  void onSubmitSuccess(dynamic response) {
    super.onSubmitSuccess(response);
    Future.microtask(() {
      clearForm();
    });
  }

  String? get courseId => _courseId.value;

  void setCourseId(String? id) {
    _courseId.value = id;
  }

  void getCourseId() {
    if (_courseId.value == null) {
      throw Exception('Course ID is not set.');
    }
  }

  @override
  Map<String, String?> validateAllFields() {
    final Map<String, String?> errors = {};

    final enrollKeyError =
        validateRequired(getControllerValue('enrollKey'), 'Username');
    if (enrollKeyError != null) {
      errors['enrollKey'] = enrollKeyError;
    }

    return errors;
  }

  Future<void> enrollCourse() => submitForm();
}
