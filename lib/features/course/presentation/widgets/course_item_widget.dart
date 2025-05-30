// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/routes/route.dart';
import 'package:mobile/shared/widgets/icon/icon.dart';
import 'package:mobile/shared/widgets/image/custom_card_image_widget.dart';

class CourseItemWidget extends StatelessWidget {
  final CourseEntity course;

  const CourseItemWidget({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        side: BorderSide(color: context.surfaceContainerHighest),
      ),
      elevation: 1,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        ),
        onTap: () {
          Get.toNamed(
            AppRoute.courseDetail,
            parameters: {'id': course.id ?? '0'},
          );
        },
        contentPadding: const EdgeInsets.all(8),
        leading: SizedBox(
          width: 56,
          height: 56,
          child: CustomCardImageWidget(imageUrl: course.imageStr),
        ),
        title: Text(
          course.titleUpperStr,
          style: context.bodyMediumW(500),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 4,
          children: [
            customImageIconWidget(
              imagePath: IconConstant.usersSolidIcon,
              width: 16,
              height: 16,
              color: context.scrim,
            ),
            Text(
              '${course.totalParticipants} ${i18n.tr('features.course.text.totalParticipants')}',
              style: context.bodySmallW(500).copyWith(color: context.scrim),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(width: 12),
            customImageIconWidget(
              imagePath: IconConstant.dateRangeSolidIcon,
              width: 16,
              height: 16,
              color: context.scrim,
            ),
            Text(
              course.startDateFormatted,
              style: context.bodySmallW(500).copyWith(color: context.scrim),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        trailing: customImageIconWidget(
          imagePath: IconConstant.chevronRightOutlineIcon,
          width: 44,
          height: 24,
        ),
      ),
    );
  }
}
