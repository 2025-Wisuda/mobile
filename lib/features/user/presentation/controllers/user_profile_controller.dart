import 'package:get/get.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/enums/group_enum.dart';
import 'package:mobile/shared/mixins/mixin.dart';

class UserProfileController extends GetxController with FetchStateMixin {
  final FetchUserProfileUsecase _fetchUserProfileUsecase;

  UserProfileController(this._fetchUserProfileUsecase);

  final _userProfile = Rxn<UserEntity>();
  UserEntity? get userProfile => _userProfile.value;
  Rxn<UserEntity> get userProfileRx => _userProfile;
  String get userGroup => _userProfile.value?.group?.toLowerCase() ?? '';

  GroupEnum? get userGroupEnum => userGroup.toGroupEnum();

  bool get isStudentUser {
    final groupEnum = userGroupEnum;
    return groupEnum?.isStudent ?? false;
  }

  bool get isStaffUser {
    final groupEnum = userGroupEnum;
    return groupEnum?.isStaff ?? false;
  }

  bool get isLabStaff {
    final groupEnum = userGroupEnum;
    return groupEnum?.isLabStaff ?? false;
  }

  bool get isNonStaff {
    final groupEnum = userGroupEnum;
    return groupEnum?.isNonStaff ?? false;
  }

  @override
  void onInit() {
    super.onInit();
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {
    await executeOperationWithNetwork(
      'userProfile',
      null,
      (_) => _fetchUserProfileUsecase.execute(),
      onSuccess: (response) async {
        _userProfile.value = response.data;
        update(['userProfile']);
      },
    );
  }

  Future<void> refreshUserProfile() async {
    await executeOperationWithNetwork(
      'userProfile',
      null,
      (_) => _fetchUserProfileUsecase.execute(),
      onSuccess: (response) async {
        _userProfile.value = response.data;
        update(['userProfile']);
      },
      useLoadingState: false,
    );
  }
}
