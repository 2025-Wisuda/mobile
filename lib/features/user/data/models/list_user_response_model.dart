import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/data/data.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/models/model.dart';

part 'list_user_response_model.freezed.dart';
part 'list_user_response_model.g.dart';

part 'list_user_response_model_extension.dart';

@freezed
abstract class ListUserResponseModel with _$ListUserResponseModel {
  const factory ListUserResponseModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<UserModel>? data,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _ListUserResponseModel;

  factory ListUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ListUserResponseModelFromJson(json);
}
