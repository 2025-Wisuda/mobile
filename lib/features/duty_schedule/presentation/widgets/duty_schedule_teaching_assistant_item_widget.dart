import 'package:flutter/material.dart';
import 'package:mobile/core/constants/border_radius_constant.dart';
import 'package:mobile/features/duty_schedule/domain/entities/duty_schedule_entity.dart';
import 'package:mobile/features/user/domain/entities/user_entity_extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/image/custom_profile_picture_image_widget.dart';

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
                            style: context.text.bodyMedium,
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
                            color: context.color.tertiaryContainer,
                            borderRadius:
                                BorderRadiusConstant.kDefaultBorderRadius,
                          ),
                          child: Text(
                            'Sedang Piket',
                            style: context.text.labelSmall!.copyWith(
                              color: context.color.tertiary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(height: 16, color: context.color.shadow),
                  ],
                );
              }).toList() ??
              [],
        ],
      ),
    );
  }
}
