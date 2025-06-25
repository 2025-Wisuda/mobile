part of 'guest_visit_model.dart';

extension GuestVisitModelExtension on GuestVisitModel {
  GuestVisitEntity toEntity() {
    return GuestVisitEntity(
      id: id,
      visitor: visitor?.toEntity(),
      name: name,
      identityType: identityType,
      identityNumber: identityNumber,
      date: date != null ? DateTime.tryParse(date!) : null,
      startTime: startTime,
      endTime: endTime,
      purpose: purpose,
      paraf: paraf,
      staff: staff?.toEntity(),
      nameDisplay: nameDisplay,
      identityDisplay: identityDisplay,
      canEdit: _calculateCanEdit(),
      createdBy: createdBy?.toEntity(),
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt!) : null,
    );
  }

  bool _calculateCanEdit() {
    if (canEdit == false) return false;

    if (createdAt != null) {
      final created = DateTime.tryParse(createdAt!);
      if (created != null) {
        final now = DateTime.now();
        final diff = now.difference(created).inMinutes;
        return diff <= 5;
      }
    }

    // If no createdAt, trust backend flag or default to true for new items
    return canEdit ?? true;
  }
}
