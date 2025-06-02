import 'package:injectable/injectable.dart';

import 'package:mobile/features/user/data/models/user_model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/list_base_controller.dart';

@lazySingleton
class FetchListUserController
    extends ListBaseController<ListUserResponseEntity, UserFilterParamsModel> {
  final FetchListUserUsecase fetchListUserUsecase;

  FetchListUserController({required this.fetchListUserUsecase});

  @override
  Future<void> performFetchList({
    required UserFilterParamsModel filterParams,
    bool isLoadMore = false,
  }) async {
    final result = await fetchListUserUsecase.execute(
      params: filterParams.copyWith(page: currentPage),
    );

    result.fold((failure) => throw Exception(failure.message), (response) {
      if (isLoadMore) {
        final currentData = entityList?.data ?? [];
        setEntityList(
          entityList?.copyWith(data: [...currentData, ...response.data!]),
        );
      } else {
        if (response.data!.isEmpty) {
          setEmpty();
        } else {
          setSuccess();
          setEntityList(response);
        }
      }

      final meta = response.meta?.pagination;
      if (meta != null) {
        updatePaginationMeta(
          currentPage: meta.currentPage ?? 1,
          totalPages: meta.totalPages ?? 1,
          totalItems: meta.totalItems ?? 0,
          pageSize: meta.pageSize ?? 10,
        );
      }
    });
  }

  void fetchUserList({
    UserFilterParamsModel? filterParams,
    bool isLoadMore = false,
  }) {
    executeFetchList(
      filterParams:
          filterParams ?? UserFilterParamsModel(page: 1, pageSize: 10),
      isLoadMore: isLoadMore,
    );
  }

  void loadMoreUsers({UserFilterParamsModel? filterParams}) {
    fetchUserList(
      filterParams:
          filterParams ??
          UserFilterParamsModel(page: currentPage + 1, pageSize: 10),
      isLoadMore: true,
    );
  }
}
