part of 'user_response_model.dart';

extension UserResponseModelExtension on UserResponseModel {
  UserResponseEntity toEntity() {
    return UserResponseEntity(
      status: status,
      message: message,
      data: data?.toEntity(),
      meta: meta?.toEntity(),
    );
  }
}
