part of 'list_user_response_model.dart';

extension ListUserResponseModelExtension on ListUserResponseModel {
  ListUserResponseEntity toEntity() {
    return ListUserResponseEntity(
      status: status,
      message: message,
      data: data?.map((user) => user.toEntity()).toList(),
      meta: meta?.toEntity(),
    );
  }
}
