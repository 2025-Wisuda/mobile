import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/guest_visit/data/models/model.dart';

part 'save_guest_visit_request_entity.freezed.dart';
part 'save_guest_visit_request_entity_extension.dart';

@freezed
abstract class SaveGuestVisitRequestEntity with _$SaveGuestVisitRequestEntity {
  const factory SaveGuestVisitRequestEntity({
    // Visitor information - conditional fields
    String? visitor,
    String? name,
    String? identityType,
    String? identityNumber,
    // Visit details - required
    required DateTime date,
    required String startTime,
    String? endTime,
    required String purpose,
    String? paraf,
  }) = _SaveGuestVisitRequestEntity;
}
