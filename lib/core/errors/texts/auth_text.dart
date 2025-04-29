import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

class AuthText {
  static String tryLogin(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.auth.login.error.400'.tr();
      case 401:
        return 'features.auth.login.error.401'.tr();
      case 403:
        return 'features.auth.login.error.403'.tr();
      case 404:
        return 'features.auth.login.error.404'.tr();
      case 408:
        return 'features.auth.login.error.408'.tr();
      case 409:
        return 'features.auth.login.error.409'.tr();
      case 422:
        return 'features.auth.login.error.422'.tr();
      case 429:
        return 'features.auth.login.error.429'.tr();
      case 500:
        return 'features.auth.login.error.500'.tr();
      default:
        return 'features.auth.login.error.default'.tr();
    }
  }

  static String catchLogin(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryLogin(e.response!.statusCode);
    } else {
      return 'features.auth.login.error.default'.tr();
    }
  }

  static String tryRefreshToken(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.auth.refreshToken.error.400'.tr();
      case 401:
        return 'features.auth.refreshToken.error.401'.tr();
      case 403:
        return 'features.auth.refreshToken.error.403'.tr();
      case 404:
        return 'features.auth.refreshToken.error.404'.tr();
      case 408:
        return 'features.auth.refreshToken.error.408'.tr();
      case 409:
        return 'features.auth.refreshToken.error.409'.tr();
      case 422:
        return 'features.auth.refreshToken.error.422'.tr();
      case 429:
        return 'features.auth.refreshToken.error.429'.tr();
      case 500:
        return 'features.auth.refreshToken.error.500'.tr();
      default:
        return 'features.auth.refreshToken.error.default'.tr();
    }
  }

  static String catchRefreshToken(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryRefreshToken(e.response!.statusCode);
    } else {
      return 'features.auth.refreshToken.error.default'.tr();
    }
  }
}
