class NotificationFilterParamsModel {
  final int page;
  final int pageSize;
  final String? search;
  final String? type;
  final bool? isRead;
  final String? ordering;

  NotificationFilterParamsModel({
    this.page = 1,
    this.pageSize = 20,
    this.search,
    this.type,
    this.isRead,
    this.ordering,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};

    if (search != null && search!.isNotEmpty) {
      params['search'] = search;
    }
    if (type != null && type!.isNotEmpty) {
      params['type'] = type;
    }
    if (isRead != null) {
      params['is_read'] = isRead;
    }
    if (ordering != null && ordering!.isNotEmpty) {
      params['ordering'] = ordering;
    }

    params['page'] = page;
    params['page_size'] = pageSize;

    return params;
  }

  NotificationFilterParamsModel copyWith({
    int? page,
    int? pageSize,
    String? search,
    String? type,
    bool? isRead,
    String? ordering,
  }) {
    return NotificationFilterParamsModel(
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      search: search ?? this.search,
      type: type ?? this.type,
      isRead: isRead ?? this.isRead,
      ordering: ordering ?? this.ordering,
    );
  }
}
