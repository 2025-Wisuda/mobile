// Package imports:
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

class CourseText {
  static String tryFetchListCourse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.course.fetchListCourse.error.400');
      case 401:
        return i18n.tr('features.course.fetchListCourse.error.401');
      case 403:
        return i18n.tr('features.course.fetchListCourse.error.403');
      case 404:
        return i18n.tr('features.course.fetchListCourse.error.404');
      case 408:
        return i18n.tr('features.course.fetchListCourse.error.408');
      case 409:
        return i18n.tr('features.course.fetchListCourse.error.409');
      case 422:
        return i18n.tr('features.course.fetchListCourse.error.422');
      case 429:
        return i18n.tr('features.course.fetchListCourse.error.429');
      case 500:
        return i18n.tr('features.course.fetchListCourse.error.500');
      default:
        return i18n.tr('features.course.fetchListCourse.error.default');
    }
  }

  static String catchFetchListCourse(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchListCourse(e.response!.statusCode);
    } else {
      return i18n.tr('features.course.fetchListCourse.error.default');
    }
  }

  static String tryFetchCourseDetail(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.course.fetchCourseDetail.error.400');
      case 401:
        return i18n.tr('features.course.fetchCourseDetail.error.401');
      case 403:
        return i18n.tr('features.course.fetchCourseDetail.error.403');
      case 404:
        return i18n.tr('features.course.fetchCourseDetail.error.404');
      case 408:
        return i18n.tr('features.course.fetchCourseDetail.error.408');
      case 409:
        return i18n.tr('features.course.fetchCourseDetail.error.409');
      case 422:
        return i18n.tr('features.course.fetchCourseDetail.error.422');
      case 429:
        return i18n.tr('features.course.fetchCourseDetail.error.429');
      case 500:
        return i18n.tr('features.course.fetchCourseDetail.error.500');
      default:
        return i18n.tr('features.course.fetchCourseDetail.error.default');
    }
  }

  static String catchFetchCourseDetail(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryFetchCourseDetail(e.response!.statusCode);
    } else {
      return i18n.tr('features.course.fetchCourseDetail.error.default');
    }
  }

  static String tryCreateCourse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.course.createCourse.error.400');
      case 401:
        return i18n.tr('features.course.createCourse.error.401');
      case 403:
        return i18n.tr('features.course.createCourse.error.403');
      case 408:
        return i18n.tr('features.course.createCourse.error.408');
      case 409:
        return i18n.tr('features.course.createCourse.error.409');
      case 422:
        return i18n.tr('features.course.createCourse.error.422');
      case 429:
        return i18n.tr('features.course.createCourse.error.429');
      case 500:
        return i18n.tr('features.course.createCourse.error.500');
      default:
        return i18n.tr('features.course.createCourse.error.default');
    }
  }

  static String catchCreateCourse(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryCreateCourse(e.response!.statusCode);
    } else {
      return i18n.tr('features.course.createCourse.error.default');
    }
  }

  static String tryUpdateCourse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.course.updateCourse.error.400');
      case 401:
        return i18n.tr('features.course.updateCourse.error.401');
      case 403:
        return i18n.tr('features.course.updateCourse.error.403');
      case 404:
        return i18n.tr('features.course.updateCourse.error.404');
      case 408:
        return i18n.tr('features.course.updateCourse.error.408');
      case 409:
        return i18n.tr('features.course.updateCourse.error.409');
      case 422:
        return i18n.tr('features.course.updateCourse.error.422');
      case 429:
        return i18n.tr('features.course.updateCourse.error.429');
      case 500:
        return i18n.tr('features.course.updateCourse.error.500');
      default:
        return i18n.tr('features.course.updateCourse.error.default');
    }
  }

  static String catchUpdateCourse(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryUpdateCourse(e.response!.statusCode);
    } else {
      return i18n.tr('features.course.updateCourse.error.default');
    }
  }

  static String tryDeleteCourse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.course.deleteCourse.error.400');
      case 401:
        return i18n.tr('features.course.deleteCourse.error.401');
      case 403:
        return i18n.tr('features.course.deleteCourse.error.403');
      case 404:
        return i18n.tr('features.course.deleteCourse.error.404');
      case 408:
        return i18n.tr('features.course.deleteCourse.error.408');
      case 409:
        return i18n.tr('features.course.deleteCourse.error.409');
      case 422:
        return i18n.tr('features.course.deleteCourse.error.422');
      case 429:
        return i18n.tr('features.course.deleteCourse.error.429');
      case 500:
        return i18n.tr('features.course.deleteCourse.error.500');
      default:
        return i18n.tr('features.course.deleteCourse.error.default');
    }
  }

  static String catchDeleteCourse(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryDeleteCourse(e.response!.statusCode);
    } else {
      return i18n.tr('features.course.deleteCourse.error.default');
    }
  }

  static String tryEnrollCourse(int? statusCode) {
    switch (statusCode) {
      case 400:
        return i18n.tr('features.course.enrollCourse.error.400');
      case 401:
        return i18n.tr('features.course.enrollCourse.error.401');
      case 403:
        return i18n.tr('features.course.enrollCourse.error.403');
      case 404:
        return i18n.tr('features.course.enrollCourse.error.404');
      case 408:
        return i18n.tr('features.course.enrollCourse.error.408');
      case 409:
        return i18n.tr('features.course.enrollCourse.error.409');
      case 422:
        return i18n.tr('features.course.enrollCourse.error.422');
      case 429:
        return i18n.tr('features.course.enrollCourse.error.429');
      case 500:
        return i18n.tr('features.course.enrollCourse.error.500');
      default:
        return i18n.tr('features.course.enrollCourse.error.default');
    }
  }

  static String catchEnrollCourse(DioException e) {
    if (e.response != null && e.response!.statusCode != null) {
      return tryEnrollCourse(e.response!.statusCode);
    } else {
      return i18n.tr('features.course.enrollCourse.error.default');
    }
  }
}
