import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/user/data/models/user_filter_params_model.dart';
import 'package:mobile/features/user/domain/domain.dart';
import 'package:get/state_manager.dart';
import 'package:mobile/shared/databases/user_database.dart';

class UserController extends GetxController {
  final FetchListUserUsecase fetchListUserUsecase;
  final FetchUserDetailUsecase fetchUserDetailUsecase;
  final FetchUserProfileUsecase fetchUserProfileUsecase;
  final UpdateUserProfileUsecase updateUserProfileUsecase;
  final ChangePasswordUsecase changePasswordUsecase;

  UserController({
    required this.fetchListUserUsecase,
    required this.fetchUserDetailUsecase,
    required this.fetchUserProfileUsecase,
    required this.updateUserProfileUsecase,
    required this.changePasswordUsecase,
  });

  @override
  void onInit() {
    super.onInit();
    fetchUserGroup();
    fetchUserProfile();
  }

  final studentIdController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final employeeIdController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final emailController = Rx<TextEditingController>(TextEditingController());
  final faceImage = Rx<File?>(null);
  final avatar = Rx<File?>(null);
  final oldPasswordController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final newPasswordController = Rx<TextEditingController>(
    TextEditingController(),
  );
  final confirmPassword = Rx<TextEditingController>(TextEditingController());
  final searchUserController = Rx<TextEditingController>(
    TextEditingController(),
  );

  final studentIdFocusNode = Rx<FocusNode>(FocusNode());
  final employeeIdFocusNode = Rx<FocusNode>(FocusNode());
  final emailFocusNode = Rx<FocusNode>(FocusNode());
  final passwordFocusNode = Rx<FocusNode>(FocusNode());
  final newPasswordFocusNode = Rx<FocusNode>(FocusNode());
  final confirmPasswordFocusNode = Rx<FocusNode>(FocusNode());
  final searchUserFocusNode = Rx<FocusNode>(FocusNode());

  final studentIdError = RxString('');
  final employeeIdError = RxString('');
  final emailError = RxString('');
  final faceImageError = RxString('');
  final avatarError = RxString('');
  final oldPasswordError = RxString('');
  final newPasswordError = RxString('');
  final confirmPasswordError = RxString('');
  final searchUserError = RxString('');

  final isChangePasswordFormValid = RxBool(false);
  final isUpdateUserProfileFormValid = RxBool(false);

  final fetchListlUserState = Rx(FetchStateEnum.initial);
  final fetchUserDetailState = Rx(FetchStateEnum.initial);
  final fetchUserProfileState = Rx(FetchStateEnum.initial);
  final updateUserProfileState = Rx(FetchStateEnum.initial);
  final changePasswordState = Rx(FetchStateEnum.initial);

  final errorMessage = RxString('');

  final obscureText = RxBool(true);

  final userEntity = Rxn<UserEntity?>();
  final listUserEntity = Rxn<ListUserEntity?>();

  final isSearchActive = RxBool(false);

  final userGroup = RxString('');

  void clearSearch() {
    searchUserController.value.clear();
    isSearchActive.value = false;
  }

  void clearChangePassword() {
    oldPasswordController.value.clear();
    newPasswordController.value.clear();
    confirmPassword.value.clear();
    oldPasswordError.value = '';
    newPasswordError.value = '';
    confirmPasswordError.value = '';
  }

  void clearUpdateProfile() {
    studentIdController.value.clear();
    employeeIdController.value.clear();
    emailController.value.clear();
    faceImage.value = null;
    avatar.value = null;
    studentIdError.value = '';
    employeeIdError.value = '';
    emailError.value = '';
    faceImageError.value = '';
    avatarError.value = '';
  }

  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }

  void validateOldPassword(String value) {
    oldPasswordError.value =
        value.isEmpty
            ? 'features.user.changePassword.validator.oldPassword.empty'.tr()
            : '';
    validateChangePassword();
  }

  void validateNewPassword(String value) {
    newPasswordError.value =
        value.isEmpty
            ? 'features.user.changePassword.validator.newPassword.empty'.tr()
            : '';
    if (value.length < 8) {
      newPasswordError.value =
          'features.user.changePassword.validator.newPassword.regex'.tr();
    }
    if (!RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$',
    ).hasMatch(value)) {
      newPasswordError.value =
          'features.user.changePassword.validator.newPassword.regex'.tr();
    }
    validateChangePassword();
  }

  void validateConfirmPassword(String value) {
    confirmPasswordError.value =
        value.isEmpty
            ? 'features.user.changePassword.validator.confirmPassword.empty'
                .tr()
            : '';
    if (value != newPasswordController.value.text) {
      confirmPasswordError.value =
          'features.user.changePassword.validator.confirmPassword.notMatch'
              .tr();
    }
    validateChangePassword();
  }

  void validateChangePassword() {
    isChangePasswordFormValid.value =
        emailError.value.isEmpty &&
        oldPasswordError.value.isEmpty &&
        newPasswordError.value.isEmpty;
  }

  void fetchUserGroup() async {
    final group = await UserDatabase.getUserGroup();
    if (group != null) {
      userGroup.value = group;
      if (group == 'Mahasiswa') {
        studentIdController.value.text = userEntity.value?.studentIdStr ?? '';
      } else if (group == 'Dosen') {
        employeeIdController.value.text = userEntity.value?.employeeIdStr ?? '';
      }
    }
  }

  Future<void> fetchAllUser({
    required UserFilterParamsModel userFilterParamsModel,
    required Rx<FetchStateEnum> stateTarget,
  }) async {
    final result = await fetchListUserUsecase.execute();
    stateTarget.value = FetchStateEnum.loading;
    result.fold(
      (failure) {
        stateTarget.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        if (response.data!.isEmpty) {
          stateTarget.value = FetchStateEnum.empty;
        } else {
          stateTarget.value = FetchStateEnum.loaded;
          listUserEntity.value = response;
        }
      },
    );
  }

  Future<void> fetchUserDetail({
    required String id,
    required Rx<FetchStateEnum> stateTarget,
  }) async {
    final result = await fetchUserDetailUsecase.execute(id);
    stateTarget.value = FetchStateEnum.loading;
    result.fold(
      (failure) {
        stateTarget.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        stateTarget.value = FetchStateEnum.loaded;
        userEntity.value = response;
      },
    );
  }

  Future<void> fetchUserProfile() async {
    final result = await fetchUserProfileUsecase.execute();
    fetchUserProfileState.value = FetchStateEnum.loading;
    result.fold(
      (failure) {
        fetchUserProfileState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        fetchUserProfileState.value = FetchStateEnum.loaded;
        userEntity.value = response;
        if (response.group != null) {
          await UserDatabase.saveUserGroup(response.group!);
        }
      },
    );
  }

  Future<void> updateUserProfile() async {
    updateUserProfileState.value = FetchStateEnum.loading;

    final request = UpdateUserProfileRequestEntity(
      studentId:
          studentIdController.value.text.trim().isEmpty
              ? null
              : studentIdController.value.text.trim(),
      employeeId:
          employeeIdController.value.text.trim().isEmpty
              ? null
              : employeeIdController.value.text.trim(),
      email:
          emailController.value.text.trim().isEmpty
              ? null
              : emailController.value.text.trim(),
      faceImage: faceImage.value,
      avatar: avatar.value,
    );

    final result = await updateUserProfileUsecase.execute(request);

    result.fold(
      (failure) {
        updateUserProfileState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        updateUserProfileState.value = FetchStateEnum.loaded;
        userEntity.value = response;
      },
    );
  }

  Future<void> changePassword() async {
    changePasswordState.value = FetchStateEnum.loading;
    final request = ChangeUserPasswordRequestEntity(
      oldPassword: oldPasswordController.value.text.trim(),
      newPassword: newPasswordController.value.text.trim(),
    );
    final result = await changePasswordUsecase.execute(request);
    result.fold(
      (failure) {
        changePasswordState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        changePasswordState.value = FetchStateEnum.loaded;
        userEntity.value = response;
      },
    );
  }
}
