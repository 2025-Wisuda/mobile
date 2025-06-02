import 'package:injectable/injectable.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/detail_base_controller.dart';

@lazySingleton
class FetchUserDetailController extends DetailBaseController<UserEntity> {
  final FetchUserDetailUsecase fetchUserDetailUsecase;

  FetchUserDetailController({required this.fetchUserDetailUsecase});

  @override
  Future<void> performFetchDetail({required String id}) async {
    final result = await fetchUserDetailUsecase.execute(id);

    result.fold((failure) => throw Exception(failure.message), (response) {
      setEntity(response.data);
      setSuccess();
    });
  }

  void fetchUserDetail(String id) {
    executeFetchDetail(id: id);
  }
}
