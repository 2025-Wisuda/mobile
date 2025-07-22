import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_delete_controller.dart';
import 'package:mobile/shared/errors/error.dart';

class DeleteCourseController extends BaseDeleteController<String, void> {
  final DeleteCourseUsecase _deleteCourseUsecase;

  DeleteCourseController(this._deleteCourseUsecase);

  @override
  String get baseStateKey => 'deleteCourse';

  @override
  Future<Either<Failure, void>> executeUsecase(String courseId) async {
    return await _deleteCourseUsecase.execute(courseId: courseId);
  }

  Future<void> deleteCourse(String courseId) async {
    await deleteItem(courseId);
  }
}
