import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/core/errors/texts/text.dart';
import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class UserRemoteDataSource {
  Future<Either<Failure, ListUserModel>> fetchListUser({
    UserFilterParamsModel? params,
  });
  Future<Either<Failure, UserModel>> fetchUserDetail(String userId);
  Future<Either<Failure, UserModel>> fetchUserProfile();
  Future<Either<Failure, UserModel>> updateUserProfile(
    UpdateUserProfileRequestEntity data,
  );
  Future<Either<Failure, UserModel>> changePassword(
    ChangeUserPasswordRequestEntity? data,
  );
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio;

  UserRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, ListUserModel>> fetchListUser({
    UserFilterParamsModel? params,
  }) async {
    try {
      LoggerUtil.logInfo('Fetch all user request');
      final queryParams = params?.toQueryParameters() ?? {};
      final response = await _dio.get(
        BaseUrlUtil.userUrl,
        queryParameters: queryParams,
      );
      LoggerUtil.logInfo(
        'Fetch all user response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(ListUserModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(UserText.tryFetchListUser(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Fetch all user error: ${e.toString()}');
      return left(ServerFailure(UserText.catchFetchListUser(e)));
    }
  }

  @override
  Future<Either<Failure, UserModel>> fetchUserDetail(String userId) async {
    try {
      LoggerUtil.logInfo('Fetch user detail request: $userId');
      final response = await _dio.get('${BaseUrlUtil.userUrl}/$userId');
      LoggerUtil.logInfo(
        'Fetch user detail response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(UserModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(UserText.tryFetchUserDetail(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Fetch user detail error: ${e.toString()}');
      return left(ServerFailure(UserText.catchFetchUserDetail(e)));
    }
  }

  @override
  Future<Either<Failure, UserModel>> fetchUserProfile() async {
    try {
      LoggerUtil.logInfo('Fetch user profile request');
      final response = await _dio.get('${BaseUrlUtil.userUrl}/me');
      LoggerUtil.logInfo('Fetch user profile url:  ${BaseUrlUtil.userUrl}/me');
      LoggerUtil.logInfo(
        'Fetch user profile response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(UserModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(UserText.tryFetchProfile(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logInfo('Fetch user profile url:  ${BaseUrlUtil.userUrl}/me');
      LoggerUtil.logError('Fetch user profile error: ${e.toString()}');
      return left(ServerFailure(UserText.catchFetchProfile(e)));
    }
  }

  @override
  Future<Either<Failure, UserModel>> updateUserProfile(
    UpdateUserProfileRequestEntity data,
  ) async {
    try {
      final formData = FormData.fromMap({
        if (data.studentId != null) 'student_id': data.studentId,
        if (data.employeeId != null) 'employee_id': data.employeeId,
        if (data.email != null) 'email': data.email,
        if (data.faceImage != null)
          'face_image': await MultipartFile.fromFile(data.faceImage!.path),
        if (data.avatar != null)
          'avatar': await MultipartFile.fromFile(data.avatar!.path),
      });
      LoggerUtil.logInfo(
        'Update user profile request: ${LoggerUtil.prettyJson(formData)}',
      );
      final response = await _dio.put(
        '${BaseUrlUtil.userUrl}/me',
        data: formData,
      );
      LoggerUtil.logInfo(
        'Update user profile response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(UserModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(UserText.tryUpdateProfile(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Update user profile error: ${e.toString()}');
      return left(ServerFailure(UserText.catchUpdateProfile(e)));
    }
  }

  @override
  Future<Either<Failure, UserModel>> changePassword(
    ChangeUserPasswordRequestEntity? data,
  ) async {
    try {
      final body = {
        'old_password': data?.oldPassword ?? '',
        'new_password': data?.newPassword ?? '',
      };
      LoggerUtil.logInfo(
        'Update password request: ${LoggerUtil.prettyJson(body)}',
      );
      final response = await _dio.put(
        BaseUrlUtil.changePasswordUrl,
        data: body,
      );
      LoggerUtil.logInfo(
        'Update password response: ${LoggerUtil.prettyJson(response.data)}',
      );
      if (response.statusCode == 200) {
        return right(UserModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(UserText.tryChangePassword(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Update password error: ${e.toString()}');
      return left(ServerFailure(UserText.catchChangePassword(e)));
    }
  }
}
