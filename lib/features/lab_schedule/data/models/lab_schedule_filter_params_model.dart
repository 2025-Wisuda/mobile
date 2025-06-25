class LabScheduleFilterParamsModel {
  final String? type;
  final int page;
  final int pageSize;
  final String? date;
  final String? search;

  LabScheduleFilterParamsModel({
    this.type,
    this.page = 1,
    this.pageSize = 10,
    this.date,
    this.search,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};

    if (type != null && type!.isNotEmpty) {
      params['type'] = type;
    }

    if (date != null && date!.isNotEmpty) {
      params['date'] = date;
    }

    if (search != null && search!.isNotEmpty) {
      params['search'] = search;
    }

    params['page'] = page;
    params['page_size'] = pageSize;

    return params;
  }
}
