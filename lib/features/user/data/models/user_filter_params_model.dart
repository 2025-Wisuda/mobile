class UserFilterParamsModel {
  final String? search;
  final String? group;
  final int page;
  final int pageSize;

  UserFilterParamsModel({
    this.search,
    this.group,
    this.page = 1,
    this.pageSize = 10,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};

    if (search != null && search!.isNotEmpty) params['search'] = search;
    if (group != null && group!.isNotEmpty) params['group__name'] = group;
    params['page'] = page;
    params['page_size'] = pageSize;

    return params;
  }

  UserFilterParamsModel copyWith({
    String? search,
    String? group,
    int? page,
    int? pageSize,
  }) {
    return UserFilterParamsModel(
      search: search ?? this.search,
      group: group ?? this.group,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
    );
  }
}
