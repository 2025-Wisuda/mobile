import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/auth/data/models/model.dart';

part 'logout_request_entity.freezed.dart';
part 'logout_request_entity_extension.dart';

@freezed
abstract class LogoutRequestEntity with _$LogoutRequestEntity {
  const factory LogoutRequestEntity({required String refreshToken}) =
      _LogoutRequestEntity;
}
