// Package imports:
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

class CourseSessionText {
  static String tryFetchListCourseSession(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.400',
        );
      case 401:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.401',
        );
      case 403:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.403',
        );
      case 404:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.404',
        );
      case 408:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.408',
        );
      case 409:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.409',
        );
      case 422:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.422',
        );
      case 429:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.429',
        );
      case 500:
        return i18n.tr(
          'features.courseSession.fetchListCourseSession.error.500',
        );
      default:
        return 'features.courseSession.fetchListCourseSession.error.default'
            .tr();
    }
  }

  static String catchFetchListCourseSession(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchListCourseSession(e.response!.statusCode);
    } else {
      return i18n.tr(
        'features.courseSession.fetchListCourseSession.error.default',
      );
    }
  }

  static String tryFetchCourseSessionDetail(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.400',
        );
      case 401:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.401',
        );
      case 403:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.403',
        );
      case 404:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.404',
        );
      case 408:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.408',
        );
      case 409:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.409',
        );
      case 422:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.422',
        );
      case 429:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.429',
        );
      case 500:
        return i18n.tr(
          'features.courseSession.fetchCourseSessionDetail.error.500',
        );
      default:
        return 'features.courseSession.fetchCourseSessionDetail.error.default'
            .tr();
    }
  }

  static String catchFetchCourseSessionDetail(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchCourseSessionDetail(e.response!.statusCode);
    } else {
      return 'features.courseSession.fetchCourseSessionDetail.error.default'
          .tr();
    }
  }

  static String tryCreateCourseSession(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.courseSession.createCourseSession.error.400');
      case 401:
        return i18n.tr('features.courseSession.createCourseSession.error.401');
      case 403:
        return i18n.tr('features.courseSession.createCourseSession.error.403');
      case 408:
        return i18n.tr('features.courseSession.createCourseSession.error.408');
      case 409:
        return i18n.tr('features.courseSession.createCourseSession.error.409');
      case 422:
        return i18n.tr('features.courseSession.createCourseSession.error.422');
      case 429:
        return i18n.tr('features.courseSession.createCourseSession.error.429');
      case 500:
        return i18n.tr('features.courseSession.createCourseSession.error.500');
      default:
        return i18n.tr(
          'features.courseSession.createCourseSession.error.default',
        );
    }
  }

  static String catchCreateCourseSession(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryCreateCourseSession(e.response!.statusCode);
    } else {
      return i18n.tr(
        'features.courseSession.createCourseSession.error.default',
      );
    }
  }

  static String tryUpdateCourseSession(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.courseSession.updateCourseSession.error.400');
      case 401:
        return i18n.tr('features.courseSession.updateCourseSession.error.401');
      case 403:
        return i18n.tr('features.courseSession.updateCourseSession.error.403');
      case 404:
        return i18n.tr('features.courseSession.updateCourseSession.error.404');
      case 408:
        return i18n.tr('features.courseSession.updateCourseSession.error.408');
      case 409:
        return i18n.tr('features.courseSession.updateCourseSession.error.409');
      case 422:
        return i18n.tr('features.courseSession.updateCourseSession.error.422');
      case 429:
        return i18n.tr('features.courseSession.updateCourseSession.error.429');
      case 500:
        return i18n.tr('features.courseSession.updateCourseSession.error.500');
      default:
        return i18n.tr(
          'features.courseSession.updateCourseSession.error.default',
        );
    }
  }

  static String catchUpdateCourseSession(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryUpdateCourseSession(e.response!.statusCode);
    } else {
      return i18n.tr(
        'features.courseSession.updateCourseSession.error.default',
      );
    }
  }

  static String tryDeleteCourseSession(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.courseSession.deleteCourseSession.error.400');
      case 401:
        return i18n.tr('features.courseSession.deleteCourseSession.error.401');
      case 403:
        return i18n.tr('features.courseSession.deleteCourseSession.error.403');
      case 404:
        return i18n.tr('features.courseSession.deleteCourseSession.error.404');
      case 408:
        return i18n.tr('features.courseSession.deleteCourseSession.error.408');
      case 409:
        return i18n.tr('features.courseSession.deleteCourseSession.error.409');
      case 422:
        return i18n.tr('features.courseSession.deleteCourseSession.error.422');
      case 429:
        return i18n.tr('features.courseSession.deleteCourseSession.error.429');
      case 500:
        return i18n.tr('features.courseSession.deleteCourseSession.error.500');
      default:
        return i18n.tr(
          'features.courseSession.deleteCourseSession.error.default',
        );
    }
  }

  static String catchDeleteCourseSession(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryDeleteCourseSession(e.response!.statusCode);
    } else {
      return i18n.tr(
        'features.courseSession.deleteCourseSession.error.default',
      );
    }
  }
}
