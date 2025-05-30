// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/course/data/models/course_session_filter_params_model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/repositories/course_session_repository.dart';

class FetchListCourseSessionUsecase {
  final CourseSessionRepository courseSessionRepository;

  FetchListCourseSessionUsecase(this.courseSessionRepository);

  Future<Either<Failure, ListCourseSessionEntity>> execute({
    CourseSessionFilterParamsModel? params,
  }) {
    return courseSessionRepository.fetchListCourseSession(params: params);
  }
}
