class DutyAttendanceFilterParamsModel {
  final int page;
  final int pageSize;
  final String? date;
  final String? status;

  DutyAttendanceFilterParamsModel(
      {this.page = 1, this.pageSize = 20, this.date, this.status});

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};
    params['page'] = page;
    params['page_size'] = pageSize;
    if (date != null) {
      params['date'] = date;
    }
    if (status != null) {
      params['status'] = status;
    }

    return params;
  }
}
