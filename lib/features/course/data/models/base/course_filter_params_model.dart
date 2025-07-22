class CourseFilterParamsModel {
  final String? startDate;
  final String? endDate;
  final String? ordering;
  final int page;
  final int pageSize;
  final String? search;

  CourseFilterParamsModel({
    this.startDate,
    this.endDate,
    this.ordering,
    this.page = 1,
    this.pageSize = 10,
    this.search,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};
    if (startDate != null && startDate!.isNotEmpty) {
      params['start_date'] = startDate;
    }
    if (endDate != null && endDate!.isNotEmpty) {
      params['end_date'] = endDate;
    }
    if (ordering != null && ordering!.isNotEmpty) {
      params['ordering'] = ordering;
    }
    if (search != null && search!.isNotEmpty) {
      params['search'] = search;
    }

    params['page'] = page;
    params['page_size'] = pageSize;

    return params;
  }

  CourseFilterParamsModel copyWith({
    String? startDate,
    String? endDate,
    String? ordering,
    int? page,
    int? pageSize,
    String? search,
  }) {
    return CourseFilterParamsModel(
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      ordering: ordering ?? this.ordering,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      search: search ?? this.search,
    );
  }
}
