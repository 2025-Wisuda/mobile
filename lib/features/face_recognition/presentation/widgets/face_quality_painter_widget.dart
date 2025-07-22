// import 'package:camera/camera.dart' show CameraLensDirection;
// import 'package:flutter/material.dart';
// import 'package:mobile/features/face_recognition/domain/domain.dart';
// import 'package:mobile/shared/utils/util.dart';

// class FaceQualityPainterWidget extends CustomPainter {
//   final FaceQualityEntity faceQuality;
//   final Rect boundingBox;
//   final bool hasFace;
//   final Size? imageSize;
//   final CameraLensDirection lensDirection;
//   final String? statusMessage;
//   final bool isSuccess; // New: Track success state for visual feedback

//   FaceQualityPainterWidget(this.faceQuality, this.boundingBox,
//       {this.hasFace = false,
//       this.imageSize,
//       required this.lensDirection,
//       this.statusMessage,
//       this.isSuccess = false});

//   @override
//   void paint(Canvas canvas, Size size) {
//     SimpleLogger.info(
//         '🎨 Canvas size: ${size.width.toInt()}x${size.height.toInt()}');
//     SimpleLogger.info('🎨 Bounding box: ${boundingBox.toString()}');

//     // Scale bounding box coordinates to canvas size, handle mirroring for front camera
//     final rect =
//         _scaleBoundingBoxToCanvas(boundingBox, size, imageSize, lensDirection);

//     SimpleLogger.info('🎨 Scaled rect: ${rect.toString()}');

//     final paint = Paint()
//       ..color = _getQualityColor()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 4.0;

//     // Draw bounding box with different styling for guide vs face detection
//     final paintColor = hasFace
//         ? _getQualityColor()
//         : _getQualityColor().withValues(alpha: 0.5);

//     paint.color = paintColor;
//     canvas.drawRect(rect, paint);

//     // Add semi-transparent fill for better visibility
//     if (!hasFace) {
//       final fillPaint = Paint()
//         ..color = _getQualityColor().withValues(alpha: 0.1)
//         ..style = PaintingStyle.fill;
//       canvas.drawRect(rect, fillPaint);
//     }

//     // Draw corners
//     final cornerLength = 30.0;
//     final cornerPaint = Paint()
//       ..color = _getQualityColor()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 6.0;

//     canvas.drawLine(
//         rect.topLeft, rect.topLeft + Offset(0, cornerLength), cornerPaint);
//     canvas.drawLine(
//         rect.topLeft, rect.topLeft + Offset(cornerLength, 0), cornerPaint);
//     canvas.drawLine(
//         rect.topRight, rect.topRight + Offset(-cornerLength, 0), cornerPaint);
//     canvas.drawLine(
//         rect.topRight, rect.topRight + Offset(0, cornerLength), cornerPaint);
//     canvas.drawLine(rect.bottomLeft, rect.bottomLeft + Offset(0, -cornerLength),
//         cornerPaint);
//     canvas.drawLine(rect.bottomLeft, rect.bottomLeft + Offset(cornerLength, 0),
//         cornerPaint);
//     canvas.drawLine(rect.bottomRight,
//         rect.bottomRight + Offset(-cornerLength, 0), cornerPaint);
//     canvas.drawLine(rect.bottomRight,
//         rect.bottomRight + Offset(0, -cornerLength), cornerPaint);

//     // Draw quality text
//     final textPainter = TextPainter(
//       text: TextSpan(
//         text: _getQualityText(),
//         style: TextStyle(
//           color: _getQualityColor(),
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//           shadows: [
//             Shadow(
//               color: Colors.black.withValues(alpha: 0.7),
//               offset: const Offset(1, 1),
//               blurRadius: 2,
//             ),
//           ],
//         ),
//       ),
//       textDirection: TextDirection.ltr,
//     );
//     textPainter.layout();
//     textPainter.paint(
//       canvas,
//       Offset(
//         rect.center.dx - textPainter.width / 2,
//         rect.top - textPainter.height - 15,
//       ),
//     );
//   }

//   Color _getQualityColor() {
//     // Show success color when recognition is successful
//     if (isSuccess) {
//       return Colors.green;
//     }

//     switch (faceQuality.level) {
//       case FaceQualityLevelEnum.excellent:
//         return Colors.green;
//       case FaceQualityLevelEnum.good:
//         return Colors.orange;
//       case FaceQualityLevelEnum.poor:
//         return Colors.red;
//     }
//   }

//   String _getQualityText() {
//     // TODO: Remove detected name display for production - this shows identifier/name above bounding box
//     // Use statusMessage from controller if available, otherwise fallback to basic text
//     if (statusMessage != null && statusMessage!.isNotEmpty) {
//       return statusMessage!;
//     }

//     // Fallback to basic quality level text
//     switch (faceQuality.level) {
//       case FaceQualityLevelEnum.excellent:
//         return 'EXCELLENT';
//       case FaceQualityLevelEnum.good:
//         return 'GOOD';
//       case FaceQualityLevelEnum.poor:
//         return 'POOR';
//     }
//   }

//   Rect _scaleBoundingBoxToCanvas(Rect boundingBox, Size canvasSize,
//       Size? imageSize, CameraLensDirection lensDirection) {
//     if (imageSize == null) {
//       return boundingBox;
//     }

//     // CameraPreview uses BoxFit.cover, so we need to replicate that scaling
//     // logic to correctly position the bounding box on the screen.
//     final double imageRatio = imageSize.width / imageSize.height;
//     final double canvasRatio = canvasSize.width / canvasSize.height;
//     double scale;

//     if (canvasRatio > imageRatio) {
//       // Canvas is 'wider' than the image. Scale based on width.
//       scale = canvasSize.width / imageSize.width;
//     } else {
//       // Canvas is 'taller' or has the same ratio. Scale based on height.
//       scale = canvasSize.height / imageSize.height;
//     }

//     final double scaledWidth = imageSize.width * scale;
//     final double scaledHeight = imageSize.height * scale;
//     final double offsetX = (canvasSize.width - scaledWidth) / 2;
//     final double offsetY = (canvasSize.height - scaledHeight) / 2;

//     // Adjust the bounding box coordinates based on the calculated scale and offset.
//     double left = boundingBox.left * scale + offsetX;
//     double top = boundingBox.top * scale + offsetY;
//     double right = boundingBox.right * scale + offsetX;
//     double bottom = boundingBox.bottom * scale + offsetY;

//     // If using the front camera, the preview is mirrored horizontally.
//     // We need to flip the bounding box horizontally in the canvas space.
//     if (lensDirection == CameraLensDirection.front) {
//       final double flippedLeft = canvasSize.width - right;
//       final double flippedRight = canvasSize.width - left;
//       left = flippedLeft;
//       right = flippedRight;
//     }

//     return Rect.fromLTRB(left, top, right, bottom);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
// }
