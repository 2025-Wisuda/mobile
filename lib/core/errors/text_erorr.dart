// import 'package:dio/dio.dart';
// import 'package:easy_localization/easy_localization.dart' as i18n;

// class TextError {
//   static String tryCatch(
//     DioException e, {
//     required String feature,
//     required String action,
//   }) {
//     final statusCode = e.response?.statusCode;
//     final baseKey = 'features.$feature.$action.error';
//     if (statusCode != null) {
//       final key = '$baseKey.$statusCode';
//       final translation = i18n.tr(key);
//       if (translation != key) return translation;
//     }
//     return i18n.tr('$baseKey.default');
//   }
// }
