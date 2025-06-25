import 'package:freezed_annotation/freezed_annotation.dart';

part 'lab_availability_entity.freezed.dart';
part 'lab_availability_entity_extension.dart';

@freezed
abstract class LabAvailabilityEntity with _$LabAvailabilityEntity {
  const factory LabAvailabilityEntity({
    String? startTime,
    String? endTime,
  }) = _LabAvailabilityEntity;
}
