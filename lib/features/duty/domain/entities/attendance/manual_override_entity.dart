import 'package:freezed_annotation/freezed_annotation.dart';

part 'manual_override_entity.freezed.dart';

@freezed
abstract class ManualOverrideRequestEntity with _$ManualOverrideRequestEntity {
  const factory ManualOverrideRequestEntity({
    required String attendanceId,
    required String action,
  }) = _ManualOverrideRequestEntity;
}

@freezed
abstract class ManualOverrideResponseEntity
    with _$ManualOverrideResponseEntity {
  const factory ManualOverrideResponseEntity({
    required String attendanceId,
    required String action,
    required String status,
    required String overriddenBy,
  }) = _ManualOverrideResponseEntity;
}
