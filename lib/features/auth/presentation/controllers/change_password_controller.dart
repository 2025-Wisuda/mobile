import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_form_controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';

class ChangePasswordController
    extends BaseFormController<ChangePasswordRequestEntity, void> {
  final ChangePasswordUsecase _changePasswordUseCase;

  ChangePasswordController(this._changePasswordUseCase);

  @override
  void onInit() {
    super.onInit();
    initializeControllers(
        ['currentPassword', 'newPassword', 'confirmPassword']);
    initializeObscureText(
        ['currentPassword', 'newPassword', 'confirmPassword']);
    getController('newPassword').addListener(() {
      update();
    });
    getController('confirmPassword').addListener(() {
      update();
    });
  }

  @override
  String get baseStateKey => 'changePassword';

  @override
  FormMode get mode => FormMode.update;

  @override
  List<String> get requiredFields =>
      ['currentPassword', 'newPassword', 'confirmPassword'];

  @override
  Future<Either<Failure, dynamic>> executeUsecase(
      ChangePasswordRequestEntity entity) async {
    return await _changePasswordUseCase.execute(data: entity);
  }

  @override
  ChangePasswordRequestEntity buildEntity() {
    return ChangePasswordRequestEntity(
      oldPassword: getControllerValue('currentPassword').trim(),
      newPassword: getControllerValue('newPassword').trim(),
    );
  }

  @override
  void onSubmitSuccess(dynamic response) {
    super.onSubmitSuccess(response);
    Future.microtask(() {
      clearForm();
    });
  }

  @override
  Map<String, String?> validateAllFields() {
    final currentPassword = getControllerValue('currentPassword');
    final newPassword = getControllerValue('newPassword');
    final confirmPassword = getControllerValue('confirmPassword');

    final errors = {
      'currentPassword': validateRequired(currentPassword, 'Current Password'),
      'newPassword': validatePassword(newPassword),
      'confirmPassword':
          validatePasswordConfirmation(confirmPassword, newPassword),
    };

    return errors..removeWhere((_, value) => value == null);
  }

  RxBool get obscureCurrentPassword =>
      getReactiveObscureText('currentPassword');
  RxBool get obscureNewPassword => getReactiveObscureText('newPassword');
  RxBool get obscureConfirmPassword =>
      getReactiveObscureText('confirmPassword');

  void toggleObscureCurrentPassword() {
    toggleObscureText('currentPassword');
  }

  void toggleObscureNewPassword() {
    toggleObscureText('newPassword');
  }

  void toggleObscureConfirmPassword() {
    toggleObscureText('confirmPassword');
  }

  Future<void> changePassword() => submitForm();
}
