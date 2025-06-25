import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_delete_controller.dart';
import 'package:mobile/shared/errors/error.dart';

class DeleteCourseSessionController
    extends BaseDeleteController<Map<String, String>, void> {
  final DeleteCourseSessionUsecase _deleteCourseSessionUsecase;

  DeleteCourseSessionController(this._deleteCourseSessionUsecase);

  @override
  String get baseStateKey => 'deleteCourseSession';

  @override
  Future<Either<Failure, void>> executeUsecase(
      Map<String, String> params) async {
    return await _deleteCourseSessionUsecase.execute(
      courseId: params['courseId']!,
      courseSessionId: params['courseSessionId']!,
    );
  }

  Future<void> deleteCourseSession({
    required String courseId,
    required String courseSessionId,
  }) async {
    await deleteItem({
      'courseId': courseId,
      'courseSessionId': courseSessionId,
    });
  }
}
