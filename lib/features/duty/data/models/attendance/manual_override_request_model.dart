import 'package:freezed_annotation/freezed_annotation.dart';

part 'manual_override_request_model.freezed.dart';
part 'manual_override_request_model.g.dart';

@freezed
abstract class ManualOverrideRequestModel with _$ManualOverrideRequestModel {
  const factory ManualOverrideRequestModel({
    @JsonKey(name: 'action') required String action,
  }) = _ManualOverrideRequestModel;

  factory ManualOverrideRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ManualOverrideRequestModelFromJson(json);
}
