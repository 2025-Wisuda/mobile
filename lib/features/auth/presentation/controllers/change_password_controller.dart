import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/form_base_controller.dart';
import 'package:mobile/shared/controllers/mixins/validation_mixin.dart';
import 'package:mobile/shared/extensions/extension.dart';

@lazySingleton
class ChangePasswordController
    extends FormBaseController<ChangePasswordRequestEntity>
    with ValidationMixin {
  final ChangePasswordUsecase changePasswordUseCase;

  ChangePasswordController({required this.changePasswordUseCase});

  final obscureCurrentPassword = RxBool(true);
  final obscureNewPassword = RxBool(true);
  final obscureConfirmPassword = RxBool(true);

  @PostConstruct()
  void init() {
    setupFormFields();
  }

  @override
  void setupFormFields() {
    registerTextField('currentPassword');
    registerTextField('newPassword');
    registerTextField('confirmPassword');
  }

  @override
  ChangePasswordRequestEntity buildRequest() {
    return ChangePasswordRequestEntity(
      oldPassword: getFieldValue('currentPassword').trim(),
      newPassword: getFieldValue('newPassword').trim(),
    );
  }

  @override
  Future<void> performSubmit(
    BuildContext context, {
    required ChangePasswordRequestEntity request,
  }) async {
    final result = await changePasswordUseCase.execute(data: request);
    result.fold(
      (failure) {
        context.showFailureSnackbar(failure);
      },
      (response) async {
        resetForm();
        if (context.mounted == true) {
          context.showSuccessSnackbar('auth'.success('changePassword'));
          Get.back();
        }
      },
    );
  }

  void toggleObscureCurrentPassword() {
    obscureCurrentPassword.value = !obscureCurrentPassword.value;
  }

  void toggleObscureNewPassword() {
    obscureNewPassword.value = !obscureNewPassword.value;
  }

  void toggleObscureConfirmPassword() {
    obscureConfirmPassword.value = !obscureConfirmPassword.value;
  }

  void validateCurrentPasswordField(String value) {
    final error = validateRequired(value, fieldName: 'Current Password');
    setFieldError('currentPassword', error);
    validateForm();
  }

  void validateNewPasswordField(String value) {
    final error = validatePassword(value, minLength: 8, requireStrong: true);
    setFieldError('newPassword', error);

    if (getFieldValue('confirmPassword').isNotEmpty) {
      validateConfirmPasswordField(getFieldValue('confirmPassword'));
    }
    validateForm();
  }

  void validateConfirmPasswordField(String value) {
    final error = validatePasswordConfirmation(
      getFieldValue('newPassword'),
      value,
    );
    setFieldError('confirmPassword', error);
    validateForm();
  }

  void executeChangePassword(BuildContext context) {
    executeSubmit(context);
  }

  @override
  bool get isFormValid {
    return getFieldError('currentPassword').isEmpty &&
        getFieldError('newPassword').isEmpty &&
        getFieldError('confirmPassword').isEmpty &&
        getFieldValue('currentPassword').isNotEmpty &&
        getFieldValue('newPassword').isNotEmpty &&
        getFieldValue('confirmPassword').isNotEmpty;
  }

  String get currentPasswordError => getFieldError('currentPassword');
  String get newPasswordError => getFieldError('newPassword');
  String get confirmPasswordError => getFieldError('confirmPassword');

  TextEditingController get currentPasswordController =>
      getController('currentPassword');
  TextEditingController get newPasswordController =>
      getController('newPassword');
  TextEditingController get confirmPasswordController =>
      getController('confirmPassword');

  FocusNode get currentPasswordFocusNode => getFocusNode('currentPassword');
  FocusNode get newPasswordFocusNode => getFocusNode('newPassword');
  FocusNode get confirmPasswordFocusNode => getFocusNode('confirmPassword');
}
