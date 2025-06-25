part of 'save_guest_visit_request_entity.dart';

extension SaveGuestVisitRequestEntityExtension on SaveGuestVisitRequestEntity {
  SaveGuestVisitRequestModel toModel() {
    return SaveGuestVisitRequestModel(
      visitor: visitor,
      name: name,
      identityType: identityType,
      identityNumber: identityNumber,
      date:
          '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}',
      startTime: startTime,
      endTime: endTime,
      purpose: purpose,
      paraf: paraf,
    );
  }

  bool get isManualEntry => visitor == null;

  bool get isRegisteredUserVisit => visitor != null;

  bool get isValid {
    if (visitor == null && (name?.isEmpty ?? true)) {
      return false;
    }

    if (purpose.isEmpty) {
      return false;
    }

    if (startTime.isEmpty) {
      return false;
    }

    if (identityType?.isNotEmpty == true && (identityNumber?.isEmpty ?? true)) {
      return false;
    }

    if (identityNumber?.isNotEmpty == true && (identityType?.isEmpty ?? true)) {
      return false;
    }

    return true;
  }

  List<String> get validationErrors {
    final errors = <String>[];

    if (visitor == null && (name?.isEmpty ?? true)) {
      errors.add('Either select a registered user or provide visitor name');
    }

    if (purpose.isEmpty) {
      errors.add('Purpose is required');
    }

    if (startTime.isEmpty) {
      errors.add('Start time is required');
    }

    if (identityType?.isNotEmpty == true && (identityNumber?.isEmpty ?? true)) {
      errors.add('Identity number required when identity type is selected');
    }

    if (identityNumber?.isNotEmpty == true && (identityType?.isEmpty ?? true)) {
      errors.add('Identity type required when identity number is provided');
    }

    if (endTime?.isNotEmpty == true && startTime.isNotEmpty) {
      try {
        final startParts = startTime.split(':');
        final endParts = endTime!.split(':');
        final startMinutes =
            int.parse(startParts[0]) * 60 + int.parse(startParts[1]);
        final endMinutes = int.parse(endParts[0]) * 60 + int.parse(endParts[1]);

        if (endMinutes <= startMinutes) {
          errors.add('End time must be after start time');
        }
      } catch (e) {
        errors.add('Invalid time format');
      }
    }

    return errors;
  }

  bool get hasIdentityInfo {
    return identityType?.isNotEmpty == true &&
        identityNumber?.isNotEmpty == true;
  }

  String get timeRangeDisplay {
    if (endTime?.isNotEmpty == true) {
      return '$startTime - $endTime';
    }
    return 'From $startTime';
  }
}
