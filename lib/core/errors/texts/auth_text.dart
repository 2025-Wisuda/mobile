// Package imports:
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

class AuthText {
  static String tryLogin(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.auth.login.error.400');
      case 401:
        return i18n.tr('features.auth.login.error.401');
      case 403:
        return i18n.tr('features.auth.login.error.403');
      case 404:
        return i18n.tr('features.auth.login.error.404');
      case 408:
        return i18n.tr('features.auth.login.error.408');
      case 409:
        return i18n.tr('features.auth.login.error.409');
      case 422:
        return i18n.tr('features.auth.login.error.422');
      case 429:
        return i18n.tr('features.auth.login.error.429');
      case 500:
        return i18n.tr('features.auth.login.error.500');
      default:
        return i18n.tr('features.auth.login.error.default');
    }
  }

  static String catchLogin(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryLogin(e.response!.statusCode);
    } else {
      return i18n.tr('features.auth.login.error.default');
    }
  }

  static String tryRefreshToken(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.auth.refreshToken.error.400');
      case 401:
        return i18n.tr('features.auth.refreshToken.error.401');
      case 403:
        return i18n.tr('features.auth.refreshToken.error.403');
      case 404:
        return i18n.tr('features.auth.refreshToken.error.404');
      case 408:
        return i18n.tr('features.auth.refreshToken.error.408');
      case 409:
        return i18n.tr('features.auth.refreshToken.error.409');
      case 422:
        return i18n.tr('features.auth.refreshToken.error.422');
      case 429:
        return i18n.tr('features.auth.refreshToken.error.429');
      case 500:
        return i18n.tr('features.auth.refreshToken.error.500');
      default:
        return i18n.tr('features.auth.refreshToken.error.default');
    }
  }

  static String catchRefreshToken(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryRefreshToken(e.response!.statusCode);
    } else {
      return i18n.tr('features.auth.refreshToken.error.default');
    }
  }
}
