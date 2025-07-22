part of 'room_booking_entity.dart';

extension RoomBookingEntityExtension on RoomBookingEntity {
  String get idStr => id ?? '';
  String get bookerStr => booker ?? '';
  String get bookerNameStr => bookerName ?? '';
  String get bookerIdentifierStr => bookerIdentifier ?? '';
  String get bookingTypeStr => bookingType ?? '';
  String get purposeStr => purpose ?? '';
  String get startTimeStr => startTime ?? '';
  String get endTimeStr => endTime ?? '';
  String get seminarTypeStr => seminarType ?? '';
  String get researchTitleStr => researchTitle ?? '';
  String get supervisorMainStr => supervisorMain ?? '';
  String get supervisorSecondaryStr => supervisorSecondary ?? '';
  String get examinerStr => examiner ?? '';
  String get documentProofStr => documentProof ?? '';
  String get approvalStatusStr => approvalStatus ?? '';
  String get approvalNotesStr => approvalNotes ?? '';

  String get dateFormatted => DateHelper.formatDayMonthYear(date: date);
  String get dateStr => date?.toIso8601String() ?? '';
  String get createdAtStr => createdAt?.toIso8601String() ?? '';
  String get updatedAtStr => updatedAt?.toIso8601String() ?? '';
  String get approvalTimestampStr => approvalTimestamp?.toIso8601String() ?? '';

  bool get isPending => approvalStatus == 'PENDING';
  bool get isApproved => approvalStatus == 'APPROVED';
  bool get isRejected => approvalStatus == 'REJECTED';
  bool get isCancelled => approvalStatus == 'CANCELLED';

  bool get isSeminar => bookingType == 'SEMINAR';
  bool get isGeneral => bookingType == 'GENERAL';
  bool get isCourse => bookingType == 'COURSE';
  bool get isMeeting => bookingType == 'MEETING';
  bool get isEvent => bookingType == 'EVENT';

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'booker': booker,
      'bookerName': bookerName,
      'bookerIdentifier': bookerIdentifier,
      'bookingType': bookingType,
      'purpose': purpose,
      'date': date?.toIso8601String(),
      'startTime': startTime,
      'endTime': endTime,
      'seminarType': seminarType,
      'researchTitle': researchTitle,
      'supervisorMain': supervisorMain,
      'supervisorSecondary': supervisorSecondary,
      'examiner': examiner,
      'documentProof': documentProof,
      'approvalStatus': approvalStatus,
      'approvalNotes': approvalNotes,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'approvalTimestamp': approvalTimestamp?.toIso8601String(),
    };
  }
}
