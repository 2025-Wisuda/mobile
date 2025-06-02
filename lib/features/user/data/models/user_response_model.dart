import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/data/data.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/models/model.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

part 'user_response_model_extension.dart';

@freezed
abstract class UserResponseModel with _$UserResponseModel {
  const factory UserResponseModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') UserModel? data,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}
