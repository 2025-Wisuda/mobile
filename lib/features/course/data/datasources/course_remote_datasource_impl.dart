part of 'course_remote_datasource.dart';

class CourseRemoteDataSourceImpl implements CourseRemoteDataSource {
  final CourseApiClient _courseApiClient;
  final Connectivity connectivity;
  final Dio dio;

  CourseRemoteDataSourceImpl(
      this._courseApiClient, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseListResponseModel<CourseModel>>> fetchListCourse({
    CourseFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response = await _courseApiClient.fetchListCourse(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'fetchListCourse'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<CourseModel>>> fetchCourseDetail({
    required String courseId,
  }) async {
    try {
      final response = await _courseApiClient.fetchCourseDetail(courseId);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'fetchCourseDetail'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<CourseModel>>> createCourse({
    required SaveCourseRequestModel data,
  }) async {
    try {
      final formData = FormData();

      // Add regular fields
      if (data.title != null && data.title!.isNotEmpty) {
        formData.fields.add(MapEntry('title', data.title!));
      }
      if (data.description != null && data.description!.isNotEmpty) {
        formData.fields.add(MapEntry('description', data.description!));
      }
      if (data.startDate != null && data.startDate!.isNotEmpty) {
        formData.fields.add(MapEntry('start_date', data.startDate!));
      }
      if (data.endDate != null && data.endDate!.isNotEmpty) {
        formData.fields.add(MapEntry('end_date', data.endDate!));
      }
      if (data.enrollKey != null && data.enrollKey!.isNotEmpty) {
        formData.fields.add(MapEntry('enroll_key', data.enrollKey!));
      }

      // Only send arrays if they have data - don't send empty arrays
      if (data.students != null && data.students!.isNotEmpty) {
        // Send as JSON string: ["uuid1","uuid2"]
        final studentsJson = '["${data.students!.join('","')}"]';
        formData.fields.add(MapEntry('student_ids', studentsJson));
      }
      // Don't send student_ids field if empty

      if (data.teachingAssistants != null &&
          data.teachingAssistants!.isNotEmpty) {
        // Send as JSON string: ["uuid1","uuid2"]
        final taJson = '["${data.teachingAssistants!.join('","')}"]';
        formData.fields.add(MapEntry('teaching_assistant_ids', taJson));
      }
      // Don't send teaching_assistant_ids field if empty

      // Add image file if provided
      if (data.image?.isNotEmpty == true) {
        await FormDataHelper.addFileToFormData(
          formData: formData,
          filePath: data.image,
          fieldName: 'image',
        );
      }

      final response = await _courseApiClient.createCourse(formData);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'createCourse'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<CourseModel>>> partialUpdateCourse({
    required SaveCourseRequestModel data,
    required String courseId,
  }) async {
    try {
      final formData = FormData();

      // Add regular fields
      if (data.title != null && data.title!.isNotEmpty) {
        formData.fields.add(MapEntry('title', data.title!));
      }
      if (data.description != null && data.description!.isNotEmpty) {
        formData.fields.add(MapEntry('description', data.description!));
      }
      if (data.startDate != null && data.startDate!.isNotEmpty) {
        formData.fields.add(MapEntry('start_date', data.startDate!));
      }
      if (data.endDate != null && data.endDate!.isNotEmpty) {
        formData.fields.add(MapEntry('end_date', data.endDate!));
      }
      if (data.enrollKey != null && data.enrollKey!.isNotEmpty) {
        formData.fields.add(MapEntry('enroll_key', data.enrollKey!));
      }

      // Only send arrays if they have data - don't send empty arrays
      if (data.students != null && data.students!.isNotEmpty) {
        // Send as JSON string: ["uuid1","uuid2"]
        final studentsJson = '["${data.students!.join('","')}"]';
        formData.fields.add(MapEntry('student_ids', studentsJson));
      }
      // Don't send student_ids field if empty

      if (data.teachingAssistants != null &&
          data.teachingAssistants!.isNotEmpty) {
        // Send as JSON string: ["uuid1","uuid2"]
        final taJson = '["${data.teachingAssistants!.join('","')}"]';
        formData.fields.add(MapEntry('teaching_assistant_ids', taJson));
      }
      // Don't send teaching_assistant_ids field if empty

      // Add image file if provided
      if (data.image?.isNotEmpty == true) {
        await FormDataHelper.addFileToFormData(
          formData: formData,
          filePath: data.image,
          fieldName: 'image',
        );
      }

      final response = await _courseApiClient.updateCourse(courseId, formData);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'updateCourse'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteCourse({required String courseId}) async {
    try {
      await _courseApiClient.deleteCourse(courseId);
      return right(null);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'deleteCourse'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<CourseModel>>> enrollCourse({
    required EnrollCourseModel data,
    required String courseId,
  }) async {
    try {
      final response = await _courseApiClient.enrollCourse(courseId, data);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'enrollCourse'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseListResponseModel<CourseModel>>> myCourse({
    CourseFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response = await _courseApiClient.myCourse(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'course', action: 'myCourse'),
        ),
      );
    }
  }
}
