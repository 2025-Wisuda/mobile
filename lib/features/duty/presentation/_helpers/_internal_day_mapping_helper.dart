class InternalDutyScheduleDayMappingHelper {
  static const Map<String, int> _tabNameToApiIndex = {
    'monday': 0,
    'tuesday': 1,
    'wednesday': 2,
    'thursday': 3,
    'friday': 4,
  };

  static List<String> getOrderedDays() {
    return ['monday', 'tuesday', 'wednesday', 'thursday', 'friday'];
  }

  static Map<String, String> createDayKeyMap() {
    return {
      'monday': 'monday',
      'tuesday': 'tuesday',
      'wednesday': 'wednesday',
      'thursday': 'thursday',
      'friday': 'friday',
    };
  }

  static void fetchByTabIndex(
    int index,
    List<String> days,
    Map<String, String> dayKeyMap,
    Function(dynamic) fetchCallback,
  ) {
    if (index >= 0 && index < days.length) {
      final dayName = days[index];
      final apiDayIndex = _tabNameToApiIndex[dayName] ?? (index);

      fetchCallback(apiDayIndex);
    }
  }
}
