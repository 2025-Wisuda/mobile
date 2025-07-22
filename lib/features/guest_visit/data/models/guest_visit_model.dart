import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/guest_visit/guest_visit.dart';
import 'package:mobile/features/user/user.dart';

part 'guest_visit_model.freezed.dart';
part 'guest_visit_model.g.dart';
part 'guest_visit_model_extension.dart';

@freezed
abstract class GuestVisitModel with _$GuestVisitModel {
  const factory GuestVisitModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'visitor') String? visitor,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'identity_type') String? identityType,
    @JsonKey(name: 'identity_number') String? identityNumber,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'purpose') String? purpose,
    @JsonKey(name: 'name_display') String? nameDisplay,
    @JsonKey(name: 'identity_display') String? identityDisplay,
    @JsonKey(name: 'can_edit') bool? canEdit,
    @JsonKey(name: 'created_by') UserModel? createdBy,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _GuestVisitModel;

  factory GuestVisitModel.fromJson(Map<String, dynamic> json) =>
      _$GuestVisitModelFromJson(json);
}
