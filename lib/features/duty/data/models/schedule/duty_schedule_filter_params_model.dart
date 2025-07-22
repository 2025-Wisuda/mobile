class DutyScheduleFilterParamsModel {
  final int page;
  final int pageSize;
  final int? days;

  DutyScheduleFilterParamsModel({this.page = 1, this.pageSize = 10, this.days});

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};
    params['page'] = page;
    params['page_size'] = pageSize;
    if (days != null) {
      params['days'] = days;
    }

    return params;
  }
}
