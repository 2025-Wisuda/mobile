import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';

class ValidateOtpController
    extends GetBaseFormController<String, OtpValidationResponseEntity> {
  final ValidateOtpUsecase _validateOtpUsecase;

  ValidateOtpController(this._validateOtpUsecase);

  @override
  void onInit() {
    super.onInit();
    initializeControllers(['otpCode']);
  }

  @override
  String get baseStateKey => 'validateOtp';

  @override
  FormMode get mode => FormMode.create;

  @override
  List<String> get requiredFields => ['otpCode'];

  @override
  Future<Either<Failure, OtpValidationResponseEntity>> executeUsecase(
      String entity) async {
    return await _validateOtpUsecase.execute(otpCode: entity);
  }

  @override
  String buildEntity() {
    return getControllerValue('otpCode').trim();
  }

  @override
  Map<String, String?> validateAllFields() {
    return {
      for (final field in requiredFields)
        field:
            validateRequired(getControllerValue(field), field.capitalizeFirst!)
    }..removeWhere((_, value) => value == null);
  }
}
