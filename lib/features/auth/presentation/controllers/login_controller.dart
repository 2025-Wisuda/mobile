import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/core/config/session.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_form_controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';

class LoginController
    extends GetBaseFormController<LoginRequestEntity, LoginResponseEntity> {
  final LoginUsecase _loginUsecase;

  LoginController(this._loginUsecase);

  @override
  void onInit() {
    super.onInit();
    initializeControllers(['username', 'password']);
    initializeObscureText(['password']);
  }

  @override
  String get baseStateKey => 'login';

  @override
  FormMode get mode => FormMode.create;

  @override
  List<String> get requiredFields => ['username', 'password'];

  @override
  Future<Either<Failure, LoginResponseEntity>> executeUsecase(
      LoginRequestEntity entity) async {
    return await _loginUsecase.execute(data: entity);
  }

  @override
  LoginRequestEntity buildEntity() {
    return LoginRequestEntity(
      username: getControllerValue('username'),
      password: getControllerValue('password'),
    );
  }

  @override
  void onSubmitSuccess(LoginResponseEntity response) {
    super.onSubmitSuccess(response);
    if (response.accessToken != null) {
      Session.saveAccessToken(response.accessToken!);
    }
    if (response.refreshToken != null) {
      Session.saveRefreshToken(response.refreshToken!);
    }
    Future.microtask(() {
      cleanForm();
      update();
    });
  }

  void togglePasswordVisibility() {
    toggleObscureText('password');
  }

  void moveToPasswordField() {
    moveToNextField('username', ['username', 'password']);
  }

  RxBool get obscureText => getReactiveObscureText('password');

  Future<void> login() => submitForm();

  @override
  Map<String, String?> validateAllFields() {
    return {
      for (final field in requiredFields)
        field:
            validateRequired(getControllerValue(field), field.capitalizeFirst!)
    }..removeWhere((_, value) => value == null);
  }
}
