import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

class UserText {
  static String tryFetchListUser(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.user.fetchListUser.error.400'.tr();
      case 401:
        return 'features.user.fetchListUser.error.401'.tr();
      case 403:
        return 'features.user.fetchListUser.error.403'.tr();
      case 404:
        return 'features.user.fetchListUser.error.404'.tr();
      case 408:
        return 'features.user.fetchListUser.error.408'.tr();
      case 409:
        return 'features.user.fetchListUser.error.409'.tr();
      case 422:
        return 'features.user.fetchListUser.error.422'.tr();
      case 429:
        return 'features.user.fetchListUser.error.429'.tr();
      case 500:
        return 'features.user.fetchListUser.error.500'.tr();
      default:
        return 'features.user.fetchListUser.error.default'.tr();
    }
  }

  static String catchFetchListUser(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchListUser(e.response!.statusCode);
    } else {
      return 'features.user.fetchListUser.error.default'.tr();
    }
  }

  static String tryFetchUserDetail(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.user.fetchUserDetail.error.400'.tr();
      case 401:
        return 'features.user.fetchUserDetail.error.401'.tr();
      case 403:
        return 'features.user.fetchUserDetail.error.403'.tr();
      case 404:
        return 'features.user.fetchUserDetail.error.404'.tr();
      case 408:
        return 'features.user.fetchUserDetail.error.408'.tr();
      case 409:
        return 'features.user.fetchUserDetail.error.409'.tr();
      case 422:
        return 'features.user.fetchUserDetail.error.422'.tr();
      case 429:
        return 'features.user.fetchUserDetail.error.429'.tr();
      case 500:
        return 'features.user.fetchUserDetail.error.500'.tr();
      default:
        return 'features.user.fetchUserDetail.error.default'.tr();
    }
  }

  static String catchFetchUserDetail(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchUserDetail(e.response!.statusCode);
    } else {
      return 'features.user.fetchUserDetail.error.default'.tr();
    }
  }

  static String tryFetchProfile(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.user.fetchProfile.error.400'.tr();
      case 401:
        return 'features.user.fetchProfile.error.401'.tr();
      case 403:
        return 'features.user.fetchProfile.error.403'.tr();
      case 404:
        return 'features.user.fetchProfile.error.404'.tr();
      case 408:
        return 'features.user.fetchProfile.error.408'.tr();
      case 409:
        return 'features.user.fetchProfile.error.409'.tr();
      case 422:
        return 'features.user.fetchProfile.error.422'.tr();
      case 429:
        return 'features.user.fetchProfile.error.429'.tr();
      case 500:
        return 'features.user.fetchProfile.error.500'.tr();
      default:
        return 'features.user.fetchProfile.error.default'.tr();
    }
  }

  static String catchFetchProfile(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchProfile(e.response!.statusCode);
    } else {
      return 'features.user.fetchProfile.error.default'.tr();
    }
  }

  static String tryUpdateProfile(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.user.updateProfile.error.400'.tr();
      case 401:
        return 'features.user.updateProfile.error.401'.tr();
      case 403:
        return 'features.user.updateProfile.error.403'.tr();
      case 404:
        return 'features.user.updateProfile.error.404'.tr();
      case 408:
        return 'features.user.updateProfile.error.408'.tr();
      case 409:
        return 'features.user.updateProfile.error.409'.tr();
      case 422:
        return 'features.user.updateProfile.error.422'.tr();
      case 429:
        return 'features.user.updateProfile.error.429'.tr();
      case 500:
        return 'features.user.updateProfile.error.500'.tr();
      default:
        return 'features.user.updateProfile.error.default'.tr();
    }
  }

  static String catchUpdateProfile(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryUpdateProfile(e.response!.statusCode);
    } else {
      return 'features.user.updateProfile.error.default'.tr();
    }
  }

  static String tryChangePassword(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'features.user.updatePassword.error.400'.tr();
      case 401:
        return 'features.user.updatePassword.error.401'.tr();
      case 403:
        return 'features.user.updatePassword.error.403'.tr();
      case 404:
        return 'features.user.updatePassword.error.404'.tr();
      case 408:
        return 'features.user.updatePassword.error.408'.tr();
      case 409:
        return 'features.user.updatePassword.error.409'.tr();
      case 422:
        return 'features.user.updatePassword.error.422'.tr();
      case 429:
        return 'features.user.updatePassword.error.429'.tr();
      case 500:
        return 'features.user.updatePassword.error.500'.tr();
      default:
        return 'features.user.updatePassword.error.default'.tr();
    }
  }

  static String catchChangePassword(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryChangePassword(e.response!.statusCode);
    } else {
      return 'features.user.updatePassword.error.default'.tr();
    }
  }
}
