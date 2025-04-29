import 'package:mobile/features/auth/data/models/refresh_token_response_model.dart';
import 'package:mobile/features/auth/domain/entities/refresh_token_response_entity.dart';

extension RefreshTokenResponseModelExtension on RefreshTokenResponseModel {
  RefreshTokenResponseEntity toEntity() {
    return RefreshTokenResponseEntity(
      accessToken: accessToken,
    );
  }
}
