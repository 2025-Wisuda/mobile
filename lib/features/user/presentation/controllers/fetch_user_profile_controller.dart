import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_state_controller.dart';

@lazySingleton
class FetchUserProfileController extends BaseStateController {
  final FetchUserProfileUsecase fetchUserProfileUsecase;

  FetchUserProfileController({required this.fetchUserProfileUsecase});

  final _userProfile = Rxn<UserEntity>();
  UserEntity? get userProfile => _userProfile.value;
  Rxn<UserEntity> get userProfileRx => _userProfile;
  String get userGroup => _userProfile.value?.group?.toLowerCase() ?? '';

  @PostConstruct()
  void init() {
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {
    setLoading();
    final result = await fetchUserProfileUsecase.execute();
    result.fold((failure) => setError(failure.message), (response) {
      final user = response.data;
      _userProfile.value = user;
      setSuccess();
    });
  }

  void refreshProfile() {
    fetchUserProfile();
  }
}
