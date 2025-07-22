class CourseSessionAttendanceFilterParamsModel {
  final int page;
  final int pageSize;
  final String? status;
  final String? search;
  final bool? manualAttendanceOverride;

  CourseSessionAttendanceFilterParamsModel({
    this.page = 1,
    this.pageSize = 20,
    this.status,
    this.search,
    this.manualAttendanceOverride,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};
    params['page'] = page;
    params['page_size'] = pageSize;
    if (status != null) {
      params['status'] = status;
    }
    if (search != null) {
      params['search'] = search;
    }
    if (manualAttendanceOverride != null) {
      params['manual_attendance_override'] = manualAttendanceOverride;
    }

    return params;
  }
}
