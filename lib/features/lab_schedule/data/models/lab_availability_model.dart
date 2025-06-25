import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';

part 'lab_availability_model.freezed.dart';
part 'lab_availability_model.g.dart';
part 'lab_availability_model_extension.dart';

@freezed
abstract class LabAvailabilityModel with _$LabAvailabilityModel {
  const factory LabAvailabilityModel({
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
  }) = _LabAvailabilityModel;

  factory LabAvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$LabAvailabilityModelFromJson(json);
}
