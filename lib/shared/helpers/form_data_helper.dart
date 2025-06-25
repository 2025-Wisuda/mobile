import 'dart:io';

import 'package:dio/dio.dart';

class FormDataHelper {
  /// Adds a file to FormData if it's a valid local file path
  ///
  /// [formData] - The FormData instance to add the file to
  /// [filePath] - The file path (can be null, URL, or local path)
  /// [fieldName] - The field name for the API endpoint
  ///
  /// Returns true if file was added, false otherwise
  static Future<bool> addFileToFormData({
    required FormData formData,
    required String? filePath,
    required String fieldName,
  }) async {
    if (filePath == null || !filePath.startsWith('/')) {
      return false;
    }

    try {
      final file = await MultipartFile.fromFile(
        filePath,
        filename: filePath.split('/').last,
      );
      formData.files.add(MapEntry(fieldName, file));
      return true;
    } catch (e) {
      // Log error or handle as needed
      return false;
    }
  }

  /// Adds a File object directly to FormData
  ///
  /// [formData] - The FormData instance to add the file to
  /// [file] - The File object
  /// [fieldName] - The field name for the API endpoint
  /// [filename] - Optional custom filename (will use file path basename if not provided)
  ///
  /// Returns true if file was added, false otherwise
  static Future<bool> addFileObjectToFormData({
    required FormData formData,
    required File? file,
    required String fieldName,
    String? filename,
  }) async {
    if (file == null || !file.existsSync()) {
      return false;
    }

    try {
      final multipartFile = await MultipartFile.fromFile(
        file.path,
        filename: filename ?? file.path.split('/').last,
      );
      formData.files.add(MapEntry(fieldName, multipartFile));
      return true;
    } catch (e) {
      // Log error or handle as needed
      return false;
    }
  }

  // ignore: unintended_html_in_doc_comment
  /// Creates FormData from a Map<String, dynamic> and adds files
  ///
  /// [data] - The data map to convert to FormData
  /// [fileFields] - Map of field names to file paths for file uploads
  /// [includeEmptyStrings] - Whether to include empty strings (default: false)
  /// [includeEmptyArrays] - Whether to include empty arrays (default: false)
  ///
  /// Returns FormData with both fields and files, automatically filtering null/empty values
  static Future<FormData> createFormDataWithFiles({
    required Map<String, dynamic> data,
    Map<String, String?>? fileFields,
    bool includeEmptyStrings = false,
    bool includeEmptyArrays = false,
  }) async {
    final formData = FormData();

    // Add regular fields with smart filtering
    for (final entry in data.entries) {
      final key = entry.key;
      final value = entry.value;

      // Skip null values
      if (value == null) continue;

      // Handle string values
      if (value is String) {
        if (!includeEmptyStrings && value.isEmpty) continue;
        formData.fields.add(MapEntry(key, value));
        continue;
      }

      // Handle List values
      if (value is List) {
        if (!includeEmptyArrays && value.isEmpty) continue;

        // Add array elements with indexed keys (e.g., students[0], students[1])
        for (int i = 0; i < value.length; i++) {
          if (value[i] != null) {
            formData.fields.add(MapEntry('$key[$i]', value[i].toString()));
          }
        }
        continue;
      }

      // Handle other types (int, double, bool, etc.)
      formData.fields.add(MapEntry(key, value.toString()));
    }

    // Add file fields
    if (fileFields != null) {
      for (final entry in fileFields.entries) {
        await addFileToFormData(
          formData: formData,
          filePath: entry.value,
          fieldName: entry.key,
        );
      }
    }

    return formData;
  }
}
