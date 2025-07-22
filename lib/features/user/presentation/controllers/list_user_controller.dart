import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/data/models/user_model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_list_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class ListUserController
    extends GetBaseListController<UserEntity, UserFilterParamsModel> {
  final FetchListUserUsecase _fetchListUserUsecase;

  ListUserController(this._fetchListUserUsecase) {
    hasSearchEnabled.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    initializeControllers(['${baseStateKey}SearchController']);
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

  /// Search with group filter
  Future<void> searchWithGroupFilter(
      String query, List<String>? allowedGroups) async {
    if (hasSearchEnabled.value) {
      setControllerValue('${baseStateKey}SearchController', query);
    }

    final filters = <String, dynamic>{};
    if (allowedGroups?.isNotEmpty == true) {
      filters['groups'] = allowedGroups;
    }

    await setFilters(filters);
  }
}
