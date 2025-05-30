// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/routes/app_route.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

class CourseGridItemWidget extends StatelessWidget {
  final CourseEntity course;

  const CourseGridItemWidget({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final radiusDefault = BorderRadiusConstant.kDefaultBorderRadius;
    final radiusBottom = BorderRadiusConstant.kDefaultBorderRadiusBottom;
    final bgColor = context.onSurfaceVariant.withValues(alpha: 0.8);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: radiusDefault,
        side: BorderSide(color: context.surfaceContainerHighest),
      ),
      elevation: 1,
      child: InkWell(
        onTap: () {
          Get.toNamed(
            AppRoute.courseDetail,
            parameters: {'id': course.id ?? '0'},
          );
        },
        borderRadius: radiusDefault,
        child: ClipRRect(
          borderRadius: radiusDefault,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(course.imageStr),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: radiusDefault,
                  ),
                  child: Row(
                    spacing: 4,
                    children: [
                      customImageIconWidget(
                        imagePath: IconConstant.usersSolidIcon,
                        width: 16,
                        height: 16,
                        color: context.surface,
                      ),
                      Text(
                        course.totalParticipantsStr,
                        style: context
                            .bodySmallW(500)
                            .copyWith(color: context.surface),
                      ),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: radiusBottom,
                  ),
                  child: Text(
                    course.titleUpperStr,
                    style: context
                        .bodyMediumW(700)
                        .copyWith(color: context.surface),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
