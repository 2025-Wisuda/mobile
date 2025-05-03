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
}
