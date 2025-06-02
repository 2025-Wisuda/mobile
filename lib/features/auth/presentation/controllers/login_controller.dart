import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/routes/app_router.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/features/user/presentation/controllers/fetch_user_profile_controller.dart';
import 'package:mobile/shared/controllers/form_base_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/services/service.dart';

@lazySingleton
class LoginController extends FormBaseController<LoginRequestEntity> {
  final LoginUsecase loginUseCase;
  final FetchUserProfileController fetchUserProfileController;

  LoginController({
    required this.loginUseCase,
    required this.fetchUserProfileController,
  });

  final obscureText = RxBool(true);

  @override
  void setupFormFields() {
    registerTextField('username');
    registerTextField('password');
  }

  @override
  LoginRequestEntity buildRequest() {
    return LoginRequestEntity(
      username: getFieldValue('username').trim(),
      password: getFieldValue('password').trim(),
    );
  }

  @PostConstruct()
  void init() {
    setupFormFields();
  }

  @override
  Future<void> performSubmit(
    BuildContext context, {
    required LoginRequestEntity request,
  }) async {
    final result = await loginUseCase.execute(data: request);
    result.fold(
      (failure) {
        context.showFailureSnackbar(failure);
      },
      (response) async {
        await _handleSuccessfulLogin(response);
        resetForm();
        await fetchUserProfileController.fetchUserProfile();
        if (context.mounted) {
          context.showSuccessSnackbar('auth'.success('login'));
          context.router.replaceAll([const MainWrapperRoute()]);
        }
      },
    );
  }

  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }

  void validateUsernameField(String value) {
    final error = value.isEmpty ? 'auth'.validator('username', 'empty') : '';
    setFieldError('username', error);
    validateForm();
  }

  void validatePasswordField(String value) {
    final error = value.isEmpty ? 'auth'.validator('password', 'empty') : '';
    setFieldError('password', error);
    validateForm();
  }

  void executeLogin(BuildContext context) {
    executeSubmit(context);
  }

  Future<void> _handleSuccessfulLogin(LoginResponseEntity response) async {
    if (response.accessToken != null) {
      await SessionService.saveAccessToken(response.accessToken!);
    }
    if (response.refreshToken != null) {
      await SessionService.saveRefreshToken(response.refreshToken!);
    }
  }

  @override
  bool get isFormValid {
    return getFieldError('username').isEmpty &&
        getFieldError('password').isEmpty &&
        getFieldValue('username').isNotEmpty &&
        getFieldValue('password').isNotEmpty;
  }

  String get usernameError => getFieldError('username');
  String get passwordError => getFieldError('password');
  TextEditingController get usernameController => getController('username');
  TextEditingController get passwordController => getController('password');
  FocusNode get usernameFocusNode => getFocusNode('username');
  FocusNode get passwordFocusNode => getFocusNode('password');

  void clearForm() {
    clearAllFields();
    resetForm();
  }
}
