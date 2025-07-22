import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/course/domain/usecases/attendance/manual_override_course_session_attendance_usecase.dart';
import 'package:mobile/shared/controllers/get_base_form_controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/errors/failure.dart';

class ManualOverrideCourseSessionAttendanceController
    extends GetBaseFormController<void, void> {
  final ManualOverrideCourseSessionAttendanceUsecase
      _manualOverrideCourseSessionAttendanceUsecase;

  ManualOverrideCourseSessionAttendanceController(
      this._manualOverrideCourseSessionAttendanceUsecase);

  final RxnString attendanceId = RxnString();
  final RxnString courseId = RxnString();
  final RxnString sessionId = RxnString();

  @override
  String get baseStateKey => 'manualOverrideCourseSessionAttendance';

  @override
  FormMode get mode => FormMode.update;

  @override
  List<String> get requiredFields => [];

  @override
  void buildEntity() {}

  @override
  Future<Either<Failure, void>> executeUsecase(void _) async {
    if (attendanceId.value == null ||
        courseId.value == null ||
        sessionId.value == null) {
      return left(GenericFailure('Missing required parameters'));
    }
    return await _manualOverrideCourseSessionAttendanceUsecase
        .execute(
          courseId: courseId.value!,
          sessionId: sessionId.value!,
          attendanceId: attendanceId.value!,
        )
        .then((result) => result.map((_) {}));
  }

  void setAttendanceId(String id) {
    attendanceId.value = id;
  }

  void setCourseId(String id) {
    courseId.value = id;
  }

  void setSessionId(String id) {
    sessionId.value = id;
  }

  @override
  void onInit() {
    _loadArguments();
    super.onInit();
  }

  void _loadArguments() {
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      attendanceId.value = arguments['attendanceId'] as String?;
      courseId.value = arguments['courseId'] as String?;
      sessionId.value = arguments['sessionId'] as String?;
    }
  }
}
