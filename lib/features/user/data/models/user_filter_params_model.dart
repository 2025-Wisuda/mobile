part of 'user_model.dart';

class UserFilterParamsModel {
  final String? search;
  final String? group;
  final List<String>? groups; // New parameter for multiple groups
  final int page;
  final int pageSize;

  UserFilterParamsModel({
    this.search,
    this.group,
    this.groups,
    this.page = 1,
    this.pageSize = 10,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};

    if (search != null && search!.isNotEmpty) params['search'] = search;

    // Priority: groups (multiple) > group (single)
    if (groups != null && groups!.isNotEmpty) {
      // For multiple groups, use the same parameter name multiple times
      // This will create: ?groups=Group1&groups=Group2
      params['groups'] = groups!;
    } else if (group != null && group!.isNotEmpty) {
      params['group'] = group;
    }

    params['page'] = page;
    params['page_size'] = pageSize;

    return params;
  }

  UserFilterParamsModel copyWith({
    String? search,
    String? group,
    List<String>? groups,
    int? page,
    int? pageSize,
  }) {
    return UserFilterParamsModel(
      search: search ?? this.search,
      group: group ?? this.group,
      groups: groups ?? this.groups,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
    );
  }
}
