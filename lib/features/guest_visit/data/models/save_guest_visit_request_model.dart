import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_guest_visit_request_model.freezed.dart';
part 'save_guest_visit_request_model.g.dart';

@freezed
abstract class SaveGuestVisitRequestModel with _$SaveGuestVisitRequestModel {
  const factory SaveGuestVisitRequestModel({
    @JsonKey(name: 'visitor', includeIfNull: false) String? visitor,
    @JsonKey(name: 'name', includeIfNull: false) String? name,
    @JsonKey(name: 'identity_type', includeIfNull: false) String? identityType,
    @JsonKey(name: 'identity_number', includeIfNull: false)
    String? identityNumber,
    @JsonKey(name: 'date', includeIfNull: false) String? date,
    @JsonKey(name: 'start_time', includeIfNull: false) String? startTime,
    @JsonKey(name: 'end_time', includeIfNull: false) String? endTime,
    @JsonKey(name: 'purpose', includeIfNull: false) String? purpose,
  }) = _SaveGuestVisitRequestModel;

  factory SaveGuestVisitRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SaveGuestVisitRequestModelFromJson(json);
}
