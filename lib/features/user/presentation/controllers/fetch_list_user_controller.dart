import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/data/models/user_model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_list_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchListUserController
    extends BaseListController<UserEntity, UserFilterParamsModel> {
  final FetchListUserUsecase _fetchListUserUsecase;

  // Store current filters to maintain them during pagination
  Map<String, dynamic>? _currentFilters;

  FetchListUserController(this._fetchListUserUsecase) {
    enableSearch();
  }

  @override
  String get baseStateKey => 'userList';

  @override
  Future<Either<Failure, BaseListResponseEntity<UserEntity>>> executeUsecase(
    UserFilterParamsModel params,
  ) async {
    return await _fetchListUserUsecase.execute(params: params);
  }

  @override
  UserFilterParamsModel createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return UserFilterParamsModel(
      page: page,
      pageSize: pageSize,
      search: search,
      group: filters?['group'],
      groups: filters?['groups'],
    );
  }

  @override
  Future<void> loadMore() async {
    if (canLoadMore) {
      // Use stored filters during pagination
      await fetchList(isLoadMore: true, filters: _currentFilters);
    }
  }

  void searchWithGroupFilter(String query, List<String>? allowedGroups) {
    if (hasSearchEnabled) {
      setControllerValue(searchControllerKey, query);
    }

    final filters = <String, dynamic>{};
    if (allowedGroups?.isNotEmpty == true) {
      filters['groups'] = allowedGroups;
    }

    // Store current filters for pagination
    _currentFilters = filters.isNotEmpty ? filters : null;

    fetchList(filters: _currentFilters);
  }
}
