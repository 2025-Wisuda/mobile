class GuestVisitFilterParamsModel {
  final int? page;
  final int? pageSize;
  final String? search;
  final String? date;

  GuestVisitFilterParamsModel({
    this.page,
    this.pageSize,
    this.search,
    this.date,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};
    if (page != null) {
      params['page'] = page;
    }
    if (pageSize != null) {
      params['page_size'] = pageSize;
    }
    if (search != null && search!.isNotEmpty) {
      params['search'] = search;
    }
    if (date != null && date!.isNotEmpty) {
      params['date'] = date;
    }

    return params;
  }

  GuestVisitFilterParamsModel copyWith({
    int? page,
    int? pageSize,
    String? search,
    String? date,
  }) {
    return GuestVisitFilterParamsModel(
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      search: search ?? this.search,
      date: date ?? this.date,
    );
  }
}
