// Package imports:
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

class UserText {
  static String tryFetchListUser(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.user.fetchListUser.error.400');
      case 401:
        return i18n.tr('features.user.fetchListUser.error.401');
      case 403:
        return i18n.tr('features.user.fetchListUser.error.403');
      case 404:
        return i18n.tr('features.user.fetchListUser.error.404');
      case 408:
        return i18n.tr('features.user.fetchListUser.error.408');
      case 409:
        return i18n.tr('features.user.fetchListUser.error.409');
      case 422:
        return i18n.tr('features.user.fetchListUser.error.422');
      case 429:
        return i18n.tr('features.user.fetchListUser.error.429');
      case 500:
        return i18n.tr('features.user.fetchListUser.error.500');
      default:
        return i18n.tr('features.user.fetchListUser.error.default');
    }
  }

  static String catchFetchListUser(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchListUser(e.response!.statusCode);
    } else {
      return i18n.tr('features.user.fetchListUser.error.default');
    }
  }

  static String tryFetchUserDetail(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.user.fetchUserDetail.error.400');
      case 401:
        return i18n.tr('features.user.fetchUserDetail.error.401');
      case 403:
        return i18n.tr('features.user.fetchUserDetail.error.403');
      case 404:
        return i18n.tr('features.user.fetchUserDetail.error.404');
      case 408:
        return i18n.tr('features.user.fetchUserDetail.error.408');
      case 409:
        return i18n.tr('features.user.fetchUserDetail.error.409');
      case 422:
        return i18n.tr('features.user.fetchUserDetail.error.422');
      case 429:
        return i18n.tr('features.user.fetchUserDetail.error.429');
      case 500:
        return i18n.tr('features.user.fetchUserDetail.error.500');
      default:
        return i18n.tr('features.user.fetchUserDetail.error.default');
    }
  }

  static String catchFetchUserDetail(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchUserDetail(e.response!.statusCode);
    } else {
      return i18n.tr('features.user.fetchUserDetail.error.default');
    }
  }

  static String tryFetchProfile(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.user.fetchProfile.error.400');
      case 401:
        return i18n.tr('features.user.fetchProfile.error.401');
      case 403:
        return i18n.tr('features.user.fetchProfile.error.403');
      case 404:
        return i18n.tr('features.user.fetchProfile.error.404');
      case 408:
        return i18n.tr('features.user.fetchProfile.error.408');
      case 409:
        return i18n.tr('features.user.fetchProfile.error.409');
      case 422:
        return i18n.tr('features.user.fetchProfile.error.422');
      case 429:
        return i18n.tr('features.user.fetchProfile.error.429');
      case 500:
        return i18n.tr('features.user.fetchProfile.error.500');
      default:
        return i18n.tr('features.user.fetchProfile.error.default');
    }
  }

  static String catchFetchProfile(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchProfile(e.response!.statusCode);
    } else {
      return i18n.tr('features.user.fetchProfile.error.default');
    }
  }

  static String tryUpdateProfile(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.user.updateProfile.error.400');
      case 401:
        return i18n.tr('features.user.updateProfile.error.401');
      case 403:
        return i18n.tr('features.user.updateProfile.error.403');
      case 404:
        return i18n.tr('features.user.updateProfile.error.404');
      case 408:
        return i18n.tr('features.user.updateProfile.error.408');
      case 409:
        return i18n.tr('features.user.updateProfile.error.409');
      case 422:
        return i18n.tr('features.user.updateProfile.error.422');
      case 429:
        return i18n.tr('features.user.updateProfile.error.429');
      case 500:
        return i18n.tr('features.user.updateProfile.error.500');
      default:
        return i18n.tr('features.user.updateProfile.error.default');
    }
  }

  static String catchUpdateProfile(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryUpdateProfile(e.response!.statusCode);
    } else {
      return i18n.tr('features.user.updateProfile.error.default');
    }
  }

  static String tryChangePassword(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.user.updatePassword.error.400');
      case 401:
        return i18n.tr('features.user.updatePassword.error.401');
      case 403:
        return i18n.tr('features.user.updatePassword.error.403');
      case 404:
        return i18n.tr('features.user.updatePassword.error.404');
      case 408:
        return i18n.tr('features.user.updatePassword.error.408');
      case 409:
        return i18n.tr('features.user.updatePassword.error.409');
      case 422:
        return i18n.tr('features.user.updatePassword.error.422');
      case 429:
        return i18n.tr('features.user.updatePassword.error.429');
      case 500:
        return i18n.tr('features.user.updatePassword.error.500');
      default:
        return i18n.tr('features.user.updatePassword.error.default');
    }
  }

  static String catchChangePassword(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryChangePassword(e.response!.statusCode);
    } else {
      return i18n.tr('features.user.updatePassword.error.default');
    }
  }
}
