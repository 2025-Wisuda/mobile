// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/core/constants/border_radius_constant.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DutyScheduleTeachingAssistantItemWidget extends StatelessWidget {
  final DutyScheduleEntity schedule;

  const DutyScheduleTeachingAssistantItemWidget({
    super.key,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...schedule.teachingAssistants?.map((assistant) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 4,
                      children: [
                        CustomProfilePictureImageWidget(
                          imageUrl: assistant.avatarStr,
                          firstName: assistant.firstNameStr,
                          lastName: assistant.lastNameStr,
                          username: assistant.usernameStr,
                        ),
                        Expanded(
                          child: Text(
                            assistant.firstName != null
                                ? '${assistant.firstNameStr} ${assistant.lastNameStr}'
                                : assistant.usernameStr,
                            style: context.bodyMediumW(500),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 12),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: context.tertiaryContainer,
                            borderRadius:
                                BorderRadiusConstant.kDefaultBorderRadius,
                          ),
                          child: Text(
                            'Sedang Piket',
                            style: context
                                .labelSmallW(600)
                                .copyWith(color: context.tertiary),
                          ),
                        ),
                      ],
                    ),
                    Divider(height: 16, color: context.shadow),
                  ],
                );
              }).toList() ??
              [],
        ],
      ),
    );
  }
}
