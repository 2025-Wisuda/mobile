import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/face_recognition/presentation/controllers/real_time_face_recognition_controller.dart';
import 'package:mobile/shared/extensions/text_style_extension.dart';

class StatusMessageWidget extends StatelessWidget {
  final RealTimeFaceRecognitionController controller;

  const StatusMessageWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              controller.statusMessage.value,
              style: context.titleMedium().copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              controller.statusInstruction.value,
              style: context.bodySmall().copyWith(
                    color: Colors.white.withValues(alpha: 0.8),
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    });
  }
}
