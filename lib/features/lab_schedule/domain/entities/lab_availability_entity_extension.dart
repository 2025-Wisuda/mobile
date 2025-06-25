part of 'lab_availability_entity.dart';

extension LabAvailabilityEntityExtension on LabAvailabilityEntity {
  /// Returns true if both start time and end time are available
  bool get isAvailable => startTime != null && endTime != null;

  /// Returns true if the lab availability data is empty or null
  bool get isEmpty => startTime == null && endTime == null;

  /// Returns formatted time range string
  String get timeRange {
    if (!isAvailable) return 'Not Available';
    return '$startTime - $endTime';
  }

  /// Returns start time or default message
  String get displayStartTime => startTime ?? 'N/A';

  /// Returns end time or default message
  String get displayEndTime => endTime ?? 'N/A';
}
