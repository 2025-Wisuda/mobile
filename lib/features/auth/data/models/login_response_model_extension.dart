// Project imports:
import 'package:mobile/features/auth/data/models/login_response_model.dart';
import 'package:mobile/features/auth/domain/entities/login_response_entity.dart';

extension LoginResponseModelExtension on LoginResponseModel {
  LoginResponseEntity toEntity() {
    return LoginResponseEntity(
      refreshToken: refreshToken,
      accessToken: accessToken,
    );
  }
}
