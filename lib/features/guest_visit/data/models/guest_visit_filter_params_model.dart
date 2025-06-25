class GuestVisitFilterParamsModel {
  final int? page;
  final int? pageSize;
  final String? search;
  final String? ordering;
  final String? date;
  final String? dateFrom;
  final String? dateTo;
  final String? name;
  final String? purpose;

  GuestVisitFilterParamsModel({
    this.page,
    this.pageSize,
    this.search,
    this.ordering,
    this.date,
    this.dateFrom,
    this.dateTo,
    this.name,
    this.purpose,
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
    if (ordering != null && ordering!.isNotEmpty) {
      params['ordering'] = ordering;
    }
    if (date != null && date!.isNotEmpty) {
      params['date'] = date;
    }
    if (dateFrom != null && dateFrom!.isNotEmpty) {
      params['date_from'] = dateFrom;
    }
    if (dateTo != null && dateTo!.isNotEmpty) {
      params['date_to'] = dateTo;
    }
    if (name != null && name!.isNotEmpty) {
      params['name'] = name;
    }
    if (purpose != null && purpose!.isNotEmpty) {
      params['purpose'] = purpose;
    }
    return params;
  }

  GuestVisitFilterParamsModel copyWith({
    int? page,
    int? pageSize,
    String? search,
    String? ordering,
    String? date,
    String? dateFrom,
    String? dateTo,
    String? name,
    String? purpose,
  }) {
    return GuestVisitFilterParamsModel(
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      search: search ?? this.search,
      ordering: ordering ?? this.ordering,
      date: date ?? this.date,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      name: name ?? this.name,
      purpose: purpose ?? this.purpose,
    );
  }
}
