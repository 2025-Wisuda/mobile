import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:camera/camera.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image/image.dart' as img;

import 'package:mobile/shared/utils/util.dart';

/// Reusable image processing service for recognition features
class ImageProcessingService {
  /// Process image for face recognition
  static Future<String> processForFaceRecognition(
    XFile imageFile, {
    FaceDetector? faceDetector,
    int targetWidth = 160,
    int targetHeight = 160,
    int jpegQuality = 85,
  }) async {
    try {
      SimpleLogger.info(
          '🖼️ [ImageProcessing] Processing image for face recognition');

      final rawBytes = await imageFile.readAsBytes();
      SimpleLogger.info(
          '📊 [ImageProcessing] Raw image size: ${rawBytes.length} bytes');

      // Decode image
      img.Image? decoded = img.decodeImage(rawBytes);
      if (decoded == null) {
        throw Exception('Cannot decode image');
      }

      decoded = img.bakeOrientation(decoded);

      // Face detection and cropping - ENABLED
      img.Image cropped;
      try {
        if (faceDetector != null) {
          final inputImage = InputImage.fromFilePath(imageFile.path);
          final faces = await faceDetector.processImage(inputImage);

          if (faces.isNotEmpty) {
            cropped = _cropFaceFromImage(decoded, faces.first);
            SimpleLogger.info('🔍 [ImageProcessing] Face detected and cropped');
          } else {
            cropped = _centerCropImage(decoded);
            SimpleLogger.info(
                '⚠️ [ImageProcessing] No face detected – using center crop');
          }
        } else {
          cropped = _centerCropImage(decoded);
          SimpleLogger.info(
              '⚠️ [ImageProcessing] No face detector provided – using center crop');
        }
      } catch (e) {
        SimpleLogger.info('⚠️ [ImageProcessing] Image processing error: $e');
        cropped = _centerCropImage(decoded);
      }

      // Resize to target dimensions
      img.Image resized = img.copyResize(
        cropped,
        width: targetWidth,
        height: targetHeight,
        interpolation: img.Interpolation.cubic,
      );

      // Encode to JPEG
      final processedBytes = img.encodeJpg(resized, quality: jpegQuality);
      final base64Image = base64Encode(processedBytes);

      SimpleLogger.success('✅ [ImageProcessing] Image processed successfully');
      SimpleLogger.info(
          '📊 [ImageProcessing] Final size: ${processedBytes.length} bytes');

      return base64Image;
    } catch (e) {
      SimpleLogger.error('❌ [ImageProcessing] Failed to process image: $e');
      rethrow;
    }
  }

  /// Crop face from image using face detection bounds
  static img.Image _cropFaceFromImage(img.Image image, Face face) {
    final box = face.boundingBox;
    final double marginX = box.width * 0.2;
    final double marginY = box.height * 0.2;

    int x = (box.left - marginX).clamp(0, image.width - 1).toInt();
    int y = (box.top - marginY).clamp(0, image.height - 1).toInt();
    int w = (box.width + 2 * marginX).clamp(1, image.width - x).toInt();
    int h = (box.height + 2 * marginY).clamp(1, image.height - y).toInt();

    return img.copyCrop(image, x: x, y: y, width: w, height: h);
  }

  /// Center crop image to square
  static img.Image _centerCropImage(img.Image image) {
    int cropSize = image.width < image.height ? image.width : image.height;
    int offsetX = (image.width - cropSize) ~/ 2;
    int offsetY = (image.height - cropSize) ~/ 2;

    return img.copyCrop(
      image,
      x: offsetX,
      y: offsetY,
      width: cropSize,
      height: cropSize,
    );
  }

  /// Compress image to target file size
  static Future<Uint8List> compressImage(
    Uint8List imageBytes, {
    int maxFileSizeKB = 500,
    int minQuality = 30,
    int maxQuality = 95,
  }) async {
    SimpleLogger.info('🗜️ [ImageProcessing] Compressing image');

    img.Image? image = img.decodeImage(imageBytes);
    if (image == null) {
      throw Exception('Cannot decode image for compression');
    }

    int quality = maxQuality;
    Uint8List compressedBytes = imageBytes;

    while (compressedBytes.length > maxFileSizeKB * 1024 &&
        quality >= minQuality) {
      compressedBytes =
          Uint8List.fromList(img.encodeJpg(image, quality: quality));
      quality -= 5;
    }

    SimpleLogger.success(
        '✅ [ImageProcessing] Image compressed: ${compressedBytes.length} bytes at quality $quality');
    return compressedBytes;
  }

  /// Resize image to specific dimensions
  static img.Image resizeImage(
    img.Image image, {
    required int width,
    required int height,
    img.Interpolation interpolation = img.Interpolation.cubic,
  }) {
    return img.copyResize(
      image,
      width: width,
      height: height,
      interpolation: interpolation,
    );
  }

  /// Apply filters to image
  static img.Image applyFilters(
    img.Image image, {
    bool mirror = false,
    double brightness = 0.0,
    double contrast = 1.0,
    double saturation = 1.0,
  }) {
    img.Image processed = image;

    if (mirror) {
      processed = img.flipHorizontal(processed);
    }

    if (brightness != 0.0) {
      processed = img.adjustColor(processed, brightness: brightness);
    }

    if (contrast != 1.0) {
      processed = img.adjustColor(processed, contrast: contrast);
    }

    if (saturation != 1.0) {
      processed = img.adjustColor(processed, saturation: saturation);
    }

    return processed;
  }

  /// Convert image to base64 string
  static String encodeToBase64(
    img.Image image, {
    int quality = 85,
    String format = 'jpeg',
  }) {
    final bytes = format.toLowerCase() == 'png'
        ? img.encodePng(image)
        : img.encodeJpg(image, quality: quality);

    return base64Encode(bytes);
  }

  /// Decode base64 string to image
  static img.Image? decodeFromBase64(String base64String) {
    try {
      final bytes = base64Decode(base64String);
      return img.decodeImage(bytes);
    } catch (e) {
      SimpleLogger.error(
          '❌ [ImageProcessing] Failed to decode base64 image: $e');
      return null;
    }
  }

  /// Get image info without loading full image
  static Future<Map<String, dynamic>> getImageInfo(XFile imageFile) async {
    try {
      final bytes = await imageFile.readAsBytes();
      final image = img.decodeImage(bytes);

      if (image == null) {
        throw Exception('Cannot decode image');
      }

      return {
        'width': image.width,
        'height': image.height,
        'channels': image.numChannels,
        'fileSize': bytes.length,
        'format': imageFile.path.split('.').last.toLowerCase(),
      };
    } catch (e) {
      SimpleLogger.error('❌ [ImageProcessing] Failed to get image info: $e');
      rethrow;
    }
  }
}
