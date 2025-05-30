import 'dart:io';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/image/custom_card_image_widget.dart';

class CourseFormImageWidget extends StatelessWidget {
  final bool? imageNetwork;
  const CourseFormImageWidget({super.key, this.imageNetwork = false});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();

    return Obx(() {
      final selectedImage = courseController.selectedImage.value;
      final networkImage = courseController.courseEntity.value?.image;
      final hasNetworkImage =
          imageNetwork == true &&
          networkImage != null &&
          networkImage.isNotEmpty;
      final hasLocalImage = selectedImage != null;

      return GestureDetector(
        onTap: () async {
          final picker = ImagePicker();
          final pickedFile = await picker.pickImage(
            source: ImageSource.gallery,
          );
          if (pickedFile != null) {
            courseController.setImage(File(pickedFile.path));
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Text(
              i18n.tr('features.course.form.label.image'),
              style: context.bodyMediumW(500),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                final maxWidth = constraints.maxWidth;
                Widget imageWidget;
                if (hasLocalImage) {
                  imageWidget = ClipRRect(
                    borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
                    child: Image.file(
                      File(selectedImage.path),
                      height: 150,
                      width: maxWidth,
                      fit: BoxFit.cover,
                    ),
                  );
                } else if (hasNetworkImage) {
                  imageWidget = CustomCardImageWidget(
                    imageUrl: networkImage,
                    height: 150,
                    width: maxWidth,
                    borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
                  );
                } else {
                  imageWidget = Container(
                    height: 150,
                    width: maxWidth,
                    decoration: BoxDecoration(
                      border: Border.all(color: context.outline),
                      borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
                      color: context.shadow,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image, size: 40, color: context.scrim),
                        const SizedBox(height: 8),
                        Text(
                          i18n.tr('features.course.form.hint.image'),
                          style: context
                              .bodySmallW(500)
                              .copyWith(color: context.scrim),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ).px(8),
                  );
                }

                return Column(children: [imageWidget]);
              },
            ),
            if (hasLocalImage)
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text.rich(
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            '${i18n.tr('features.course.text.selectedImagePath')}: ',
                        style: context.bodySmallW(400),
                      ),
                      TextSpan(
                        text: selectedImage.path,
                        style: context
                            .bodySmallW(400)
                            .copyWith(color: context.primary),
                      ),
                    ],
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, size: 24),
                  onPressed: () {
                    courseController.setImage(null);
                  },
                ),
              ),
          ],
        ),
      );
    });
  }
}
