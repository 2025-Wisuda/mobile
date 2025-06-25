import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as path;

/// Comprehensive PDF utility helper for handling PDF files
///
/// Provides functions for:
/// - PDF validation and format checking
/// - Metadata extraction (size, name, extension)
/// - File path operations
/// - PDF content operations
/// - Format validation and conversion utilities
class PdfHelper {
  /// Validates if file is a PDF based on extension
  static bool isPdfFile(File file) {
    if (!file.existsSync()) return false;
    final extension = path.extension(file.path).toLowerCase();
    return extension == '.pdf';
  }

  /// Validates if file path indicates a PDF file
  static bool isPdfPath(String filePath) {
    final extension = path.extension(filePath).toLowerCase();
    return extension == '.pdf';
  }

  /// Validates if file is PDF and meets size requirements
  static bool isValidPdfFile(File file, {int? maxSizeInBytes}) {
    if (!isPdfFile(file)) return false;

    if (maxSizeInBytes != null) {
      final fileSize = getFileSize(file);
      if (fileSize > maxSizeInBytes) return false;
    }

    return true;
  }

  /// Gets PDF file size in bytes
  static int getFileSize(File file) {
    try {
      return file.lengthSync();
    } catch (e) {
      return 0;
    }
  }

  /// Gets PDF file size in KB
  static double getFileSizeInKB(File file) {
    return getFileSize(file) / 1024;
  }

  /// Gets PDF file size in MB
  static double getFileSizeInMB(File file) {
    return getFileSize(file) / (1024 * 1024);
  }

  /// Gets formatted file size string
  static String getFormattedFileSize(File file) {
    final bytes = getFileSize(file);

    if (bytes < 1024) {
      return '$bytes B';
    } else if (bytes < 1024 * 1024) {
      return '${(bytes / 1024).toStringAsFixed(1)} KB';
    } else {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
  }

  /// Gets PDF file name without extension
  static String getFileNameWithoutExtension(File file) {
    final fileName = path.basename(file.path);
    return path.basenameWithoutExtension(fileName);
  }

  /// Gets PDF file name with extension
  static String getFileName(File file) {
    return path.basename(file.path);
  }

  /// Gets PDF file extension (always returns '.pdf' for valid PDFs)
  static String getFileExtension(File file) {
    return path.extension(file.path).toLowerCase();
  }

  /// Gets PDF file directory path
  static String getFileDirectory(File file) {
    return path.dirname(file.path);
  }

  /// Creates a sanitized file name for PDF
  static String sanitizeFileName(String fileName) {
    // Remove invalid characters and ensure .pdf extension
    String sanitized = fileName
        .replaceAll(RegExp(r'[<>:"/\\|?*]'), '_')
        .replaceAll(RegExp(r'\s+'), '_');

    if (!sanitized.toLowerCase().endsWith('.pdf')) {
      if (sanitized.endsWith('.')) {
        sanitized += 'pdf';
      } else {
        sanitized += '.pdf';
      }
    }

    return sanitized;
  }

  /// Reads PDF file as bytes
  static Future<Uint8List?> readPdfAsBytes(File file) async {
    try {
      if (!isPdfFile(file)) return null;
      return await file.readAsBytes();
    } catch (e) {
      return null;
    }
  }

  /// Validates PDF file header (checks if it's actually a PDF)
  static Future<bool> validatePdfHeader(File file) async {
    try {
      final bytes = await file.readAsBytes();
      if (bytes.length < 4) return false;

      // PDF files start with %PDF
      final header = String.fromCharCodes(bytes.take(4));
      return header == '%PDF';
    } catch (e) {
      return false;
    }
  }

  /// Gets PDF metadata information
  static Future<PdfMetadata> getPdfMetadata(File file) async {
    final metadata = PdfMetadata();

    if (!file.existsSync()) {
      return metadata.copyWith(isValid: false);
    }

    try {
      // Basic file info
      metadata.fileName = getFileName(file);
      metadata.filePath = file.path;
      metadata.fileSize = getFileSize(file);
      metadata.formattedSize = getFormattedFileSize(file);
      metadata.isValidExtension = isPdfFile(file);

      // Validate PDF header
      metadata.isValidPdf = await validatePdfHeader(file);
      metadata.isValid = metadata.isValidExtension && metadata.isValidPdf;

      return metadata;
    } catch (e) {
      return metadata.copyWith(isValid: false);
    }
  }

  /// Copies PDF file to new location
  static Future<File?> copyPdfFile(
      File sourceFile, String destinationPath) async {
    try {
      if (!isPdfFile(sourceFile)) return null;

      final destinationFile = File(destinationPath);
      await destinationFile.parent.create(recursive: true);

      return await sourceFile.copy(destinationPath);
    } catch (e) {
      return null;
    }
  }

  /// Moves PDF file to new location
  static Future<File?> movePdfFile(
      File sourceFile, String destinationPath) async {
    try {
      if (!isPdfFile(sourceFile)) return null;

      final destinationFile = File(destinationPath);
      await destinationFile.parent.create(recursive: true);

      return await sourceFile.rename(destinationPath);
    } catch (e) {
      return null;
    }
  }

  /// Deletes PDF file safely
  static Future<bool> deletePdfFile(File file) async {
    try {
      if (!file.existsSync()) return false;
      await file.delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Validates multiple PDF files
  static Future<List<PdfValidationResult>> validateMultiplePdfFiles(
    List<File> files, {
    int? maxSizeInBytes,
  }) async {
    final results = <PdfValidationResult>[];

    for (final file in files) {
      final metadata = await getPdfMetadata(file);
      final isValidSize =
          maxSizeInBytes == null || metadata.fileSize <= maxSizeInBytes;

      results.add(PdfValidationResult(
        file: file,
        metadata: metadata,
        isValidSize: isValidSize,
        isValid: metadata.isValid && isValidSize,
      ));
    }

    return results;
  }

  /// Gets supported PDF file extensions
  static List<String> getSupportedExtensions() {
    return ['.pdf'];
  }

  /// Creates file filter for PDF files (for file pickers)
  static Map<String, List<String>> getFilePickerFilter() {
    return {
      'PDF Files': ['pdf'],
    };
  }
}

/// PDF metadata information class
class PdfMetadata {
  String fileName;
  String filePath;
  int fileSize;
  String formattedSize;
  bool isValidExtension;
  bool isValidPdf;
  bool isValid;

  PdfMetadata({
    this.fileName = '',
    this.filePath = '',
    this.fileSize = 0,
    this.formattedSize = '',
    this.isValidExtension = false,
    this.isValidPdf = false,
    this.isValid = false,
  });

  PdfMetadata copyWith({
    String? fileName,
    String? filePath,
    int? fileSize,
    String? formattedSize,
    bool? isValidExtension,
    bool? isValidPdf,
    bool? isValid,
  }) {
    return PdfMetadata(
      fileName: fileName ?? this.fileName,
      filePath: filePath ?? this.filePath,
      fileSize: fileSize ?? this.fileSize,
      formattedSize: formattedSize ?? this.formattedSize,
      isValidExtension: isValidExtension ?? this.isValidExtension,
      isValidPdf: isValidPdf ?? this.isValidPdf,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  String toString() {
    return 'PdfMetadata(fileName: $fileName, fileSize: $formattedSize, isValid: $isValid)';
  }
}

/// PDF validation result class
class PdfValidationResult {
  final File file;
  final PdfMetadata metadata;
  final bool isValidSize;
  final bool isValid;
  final String? errorMessage;

  PdfValidationResult({
    required this.file,
    required this.metadata,
    required this.isValidSize,
    required this.isValid,
    this.errorMessage,
  });

  @override
  String toString() {
    return 'PdfValidationResult(file: ${metadata.fileName}, isValid: $isValid)';
  }
}
