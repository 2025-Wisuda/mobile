// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/routes/route.dart';
import 'package:mobile/shared/widgets/icon/icon.dart';

class CourseSessionItemWidget extends StatelessWidget {
  final CourseSessionEntity courseSession;

  const CourseSessionItemWidget({super.key, required this.courseSession});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        side: BorderSide(color: context.primaryContainer),
      ),
      elevation: 1,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        ),
        onTap: () {
          Get.toNamed(
            AppRoute.courseSessionDetail,
            parameters: {'id': courseSession.id ?? '0'},
          );
        },
        title: Text(
          courseSession.titleUpperStr,
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
              imagePath: IconConstant.dateRangeSolidIcon,
              width: 16,
              height: 16,
              color: context.scrim,
            ),
            Text(
              courseSession.sessionDateFullDate,
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
