class CourseSessionFilterParamsModel {
  final String? course;
  final String? ordering;
  final int page;
  final int pageSize;
  final String? search;
  final String? sessionDate;
  final String? status;
  final String? title;

  CourseSessionFilterParamsModel({
    this.course,
    this.ordering,
    this.page = 1,
    this.pageSize = 10,
    this.search,
    this.sessionDate,
    this.status,
    this.title,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};

    if (course != null && course!.isNotEmpty) {
      params['course'] = course;
    }
    if (ordering != null && ordering!.isNotEmpty) {
      params['ordering'] = ordering;
    }
    if (search != null && search!.isNotEmpty) {
      params['search'] = search;
    }
    if (sessionDate != null && sessionDate!.isNotEmpty) {
      params['session_date'] = sessionDate;
    }
    if (status != null && status!.isNotEmpty) {
      params['status'] = status;
    }
    if (title != null && title!.isNotEmpty) {
      params['title'] = title;
    }

    params['page'] = page;
    params['page_size'] = pageSize;

    return params;
  }
}
