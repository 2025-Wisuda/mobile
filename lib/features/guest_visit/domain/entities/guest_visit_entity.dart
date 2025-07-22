import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/user.dart';

part 'guest_visit_entity.freezed.dart';

@freezed
abstract class GuestVisitEntity with _$GuestVisitEntity {
  const factory GuestVisitEntity({
    String? id,
    String? visitor,
    String? name,
    String? identityType,
    String? identityNumber,
    String? date,
    String? startTime,
    String? endTime,
    String? purpose,
    String? paraf,
    UserEntity? staff,
    String? nameDisplay,
    String? identityDisplay,
    bool? canEdit,
    UserEntity? createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _GuestVisitEntity;
}
