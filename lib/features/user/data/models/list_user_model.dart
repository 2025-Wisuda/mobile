// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/models/meta_model.dart';
import 'user_model.dart';

part 'list_user_model.freezed.dart';
part 'list_user_model.g.dart';

@freezed
abstract class ListUserModel with _$ListUserModel {
  const factory ListUserModel({
    @JsonKey(name: 'data') List<UserModel>? data,
    @JsonKey(name: 'meta') MetaModel? meta,
  }) = _ListUserModel;

  factory ListUserModel.fromJson(Map<String, dynamic> json) =>
      _$ListUserModelFromJson(json);
}
