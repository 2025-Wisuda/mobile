enum NotificationTypeEnum {
  labSchedule,
  roomBooking,
  courseUpdate,
  dutySchedule,
  guestVisit,
  general;

  String get value {
    switch (this) {
      case NotificationTypeEnum.labSchedule:
        return 'lab_schedule';
      case NotificationTypeEnum.roomBooking:
        return 'room_booking';
      case NotificationTypeEnum.courseUpdate:
        return 'course_update';
      case NotificationTypeEnum.dutySchedule:
        return 'duty_schedule';
      case NotificationTypeEnum.guestVisit:
        return 'guest_visit';
      case NotificationTypeEnum.general:
        return 'general';
    }
  }

  static NotificationTypeEnum fromString(String value) {
    switch (value) {
      case 'lab_schedule':
        return NotificationTypeEnum.labSchedule;
      case 'room_booking':
        return NotificationTypeEnum.roomBooking;
      case 'course_update':
        return NotificationTypeEnum.courseUpdate;
      case 'duty_schedule':
        return NotificationTypeEnum.dutySchedule;
      case 'guest_visit':
        return NotificationTypeEnum.guestVisit;
      default:
        return NotificationTypeEnum.general;
    }
  }

  String get displayName {
    switch (this) {
      case NotificationTypeEnum.labSchedule:
        return 'Lab Schedule';
      case NotificationTypeEnum.roomBooking:
        return 'Room Booking';
      case NotificationTypeEnum.courseUpdate:
        return 'Course Update';
      case NotificationTypeEnum.dutySchedule:
        return 'Duty Schedule';
      case NotificationTypeEnum.guestVisit:
        return 'Guest Visit';
      case NotificationTypeEnum.general:
        return 'General';
    }
  }

  String get channelId {
    switch (this) {
      case NotificationTypeEnum.labSchedule:
        return 'lab_schedule_notifications';
      case NotificationTypeEnum.roomBooking:
        return 'room_booking_notifications';
      case NotificationTypeEnum.courseUpdate:
        return 'course_notifications';
      case NotificationTypeEnum.dutySchedule:
        return 'duty_schedule_notifications';
      case NotificationTypeEnum.guestVisit:
        return 'guest_visit_notifications';
      case NotificationTypeEnum.general:
        return 'general_notifications';
    }
  }
}

enum NotificationPriorityEnum {
  low,
  normal,
  high,
  urgent;

  String get value {
    switch (this) {
      case NotificationPriorityEnum.low:
        return 'low';
      case NotificationPriorityEnum.normal:
        return 'normal';
      case NotificationPriorityEnum.high:
        return 'high';
      case NotificationPriorityEnum.urgent:
        return 'urgent';
    }
  }

  static NotificationPriorityEnum fromString(String value) {
    switch (value) {
      case 'low':
        return NotificationPriorityEnum.low;
      case 'normal':
        return NotificationPriorityEnum.normal;
      case 'high':
        return NotificationPriorityEnum.high;
      case 'urgent':
        return NotificationPriorityEnum.urgent;
      default:
        return NotificationPriorityEnum.normal;
    }
  }

  int get androidImportance {
    switch (this) {
      case NotificationPriorityEnum.low:
        return 2; // IMPORTANCE_LOW
      case NotificationPriorityEnum.normal:
        return 3; // IMPORTANCE_DEFAULT
      case NotificationPriorityEnum.high:
        return 4; // IMPORTANCE_HIGH
      case NotificationPriorityEnum.urgent:
        return 5; // IMPORTANCE_MAX
    }
  }

  int get androidPriority {
    switch (this) {
      case NotificationPriorityEnum.low:
        return -2; // PRIORITY_LOW
      case NotificationPriorityEnum.normal:
        return 0; // PRIORITY_DEFAULT
      case NotificationPriorityEnum.high:
        return 1; // PRIORITY_HIGH
      case NotificationPriorityEnum.urgent:
        return 2; // PRIORITY_MAX
    }
  }
}

/// Enum for notification action types
enum NotificationActionEnum {
  view,
  approve,
  reject,
  reschedule,
  cancel,
  remind;

  /// Get string representation
  String get value {
    switch (this) {
      case NotificationActionEnum.view:
        return 'view';
      case NotificationActionEnum.approve:
        return 'approve';
      case NotificationActionEnum.reject:
        return 'reject';
      case NotificationActionEnum.reschedule:
        return 'reschedule';
      case NotificationActionEnum.cancel:
        return 'cancel';
      case NotificationActionEnum.remind:
        return 'remind';
    }
  }

  /// Get action from string
  static NotificationActionEnum fromString(String value) {
    switch (value) {
      case 'view':
        return NotificationActionEnum.view;
      case 'approve':
        return NotificationActionEnum.approve;
      case 'reject':
        return NotificationActionEnum.reject;
      case 'reschedule':
        return NotificationActionEnum.reschedule;
      case 'cancel':
        return NotificationActionEnum.cancel;
      case 'remind':
        return NotificationActionEnum.remind;
      default:
        return NotificationActionEnum.view;
    }
  }

  /// Get display name for action
  String get displayName {
    switch (this) {
      case NotificationActionEnum.view:
        return 'View';
      case NotificationActionEnum.approve:
        return 'Approve';
      case NotificationActionEnum.reject:
        return 'Reject';
      case NotificationActionEnum.reschedule:
        return 'Reschedule';
      case NotificationActionEnum.cancel:
        return 'Cancel';
      case NotificationActionEnum.remind:
        return 'Remind Me';
    }
  }
}
