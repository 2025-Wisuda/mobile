import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/shared/shared.dart';

class AuthController extends GetxController {
  final LoginUseCase loginUseCase;

  AuthController(this.loginUseCase);

  final usernameController = Rx<TextEditingController>(TextEditingController());
  final passwordController = Rx<TextEditingController>(TextEditingController());
  final usernameFocusNode = Rx<FocusNode>(FocusNode());
  final passwordFocusNode = Rx<FocusNode>(FocusNode());

  final usernameError = RxString('');
  final passwordError = RxString('');
  final isFormValid = RxBool(false);
  final obscureText = RxBool(true);
  final state = Rx<SubmitStateEnum>(SubmitStateEnum.initial);

  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }

  void validateUsername(String value) {
    usernameError.value =
        value.isEmpty
            ? 'features.auth.login.validator.username.empty'.tr()
            : '';
    validateForm();
  }

  void validatePassword(String value) {
    passwordError.value =
        value.isEmpty
            ? 'features.auth.login.validator.password.empty'.tr()
            : '';
    validateForm();
  }

  void validateForm() {
    isFormValid.value =
        usernameError.value.isEmpty &&
        passwordError.value.isEmpty &&
        usernameController.value.text.isNotEmpty &&
        passwordController.value.text.isNotEmpty;
  }

  void clearForm() {
    usernameController.value.clear();
    passwordController.value.clear();
    usernameFocusNode.value.unfocus();
    passwordFocusNode.value.unfocus();
  }

  Future<void> login(BuildContext context) async {
    state.value = SubmitStateEnum.loading;
    final result = await loginUseCase.execute(
      usernameController.value.text,
      passwordController.value.text,
    );
    result.fold(
      (failure) {
        state.value = SubmitStateEnum.failure;
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CustomDialogErrorWidget(errorText: failure.message);
          },
        );
      },
      (response) async {
        state.value = SubmitStateEnum.success;
        if (response.accessToken != null) {
          await SessionDatabase.saveAccessToken(response.accessToken!);
        }
        if (response.refreshToken != null) {
          await SessionDatabase.saveRefreshToken(response.refreshToken!);
        }
        clearForm();
        Get.offAllNamed(AppRoute.home);
      },
    );
  }

  Future<void> logout() async {
    await SessionDatabase.clearAllTokens();
    final accessToken = await SessionDatabase.getAccessToken();
    await UserDatabase.clearAllUserData();
    if (accessToken == null) {
      Get.offAllNamed(AppRoute.login);
    }
  }
}
