import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseSessionWidget extends StatelessWidget {
  final CourseSessionEntity? courseSession;

  const DetailCourseSessionWidget({super.key, this.courseSession});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        _buildHeaderSection(context),
        _buildDetailsSection(context),
        if (courseSession?.teachingAssistants?.isNotEmpty == true)
          _buildTeachingAssistantsSection(context),
      ],
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return CustomCardItemWidget(
      mainContent: CardSectionHelpers.titleSubtitle(
        context,
        title: courseSession?.titleStr ?? '',
        subtitle: courseSession?.descriptionStr.isNotEmpty == true
            ? courseSession?.descriptionStr
            : null,
        titleMaxLines: 3,
        subtitleMaxLines: 5,
        titleStyle: context.bodyLargeW(600),
        subtitleStyle: context.bodyMediumW(400).copyWith(
              color: context.onSurfaceVariant,
              height: 1.4,
            ),
      ),
      backgroundColor: context.primaryContainer.withValues(alpha: 0.6),
      showBorder: true,
      borderColor: context.primary.withValues(alpha: 0.2),
      padding: const EdgeInsets.all(20),
    );
  }

  Widget _buildDetailsSection(BuildContext context) {
    return CustomCardItemWidget(
      mainContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Row(
            children: [
              Icon(Icons.info_outline, color: context.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'course'.label('sessionDescription'),
                style: context.bodyLargeW(500),
              ),
            ],
          ),
          const Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              if (courseSession?.type?.isNotEmpty == true)
                CardSectionHelpers.metadataRow(
                  context,
                  icon: Icons.category_outlined,
                  text: courseSession?.type ?? '',
                  size: MetadataSize.large,
                ),
              if (courseSession?.date != null)
                CardSectionHelpers.metadataRow(
                  context,
                  icon: Icons.calendar_today_outlined,
                  text: courseSession?.dateFullDate ?? '',
                  size: MetadataSize.large,
                ),
              if (courseSession?.startTime?.isNotEmpty == true)
                CardSectionHelpers.metadataRow(
                  context,
                  icon: Icons.access_time_outlined,
                  text:
                      '${courseSession?.startTimeFormatted} - ${courseSession?.endTimeFormatted}',
                  size: MetadataSize.large,
                ),
              if (courseSession?.status?.isNotEmpty == true)
                Row(
                  children: [
                    Icon(Icons.flag_outlined,
                        size: 16, color: context.onSurfaceVariant),
                    const SizedBox(width: 6),
                    CardSectionHelpers.statusBadge(
                      context,
                      label: courseSession?.status ?? '',
                      backgroundColor:
                          _getStatusColor(context, courseSession?.status ?? ''),
                      textColor: context.onPrimary,
                      size: StatusBadgeSize.small,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
      backgroundColor: context.surface,
      showBorder: true,
      borderColor: context.surfaceDim,
      padding: const EdgeInsets.all(20),
    );
  }

  Widget _buildTeachingAssistantsSection(BuildContext context) {
    return CustomCardItemWidget(
      mainContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Row(
            children: [
              Icon(Icons.supervisor_account_outlined,
                  color: context.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'course'.label('teachingAssistants'),
                style: context.bodyLargeW(500),
              ),
              const Spacer(),
              CardSectionHelpers.statusBadge(
                context,
                label: '${courseSession?.teachingAssistants?.length ?? 0}',
                backgroundColor: context.primary,
                textColor: context.onPrimary,
                size: StatusBadgeSize.small,
              ),
            ],
          ),
          const Divider(),
          Column(
            children: courseSession?.teachingAssistants?.map((ta) {
                  return UserCardItemWidget(
                    name: ta.fullNameOrUsername,
                    subtitle: null,
                    imageUrl: ta.avatar,
                    showBorder: false,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                    margin: EdgeInsets.zero,
                  );
                }).toList() ??
                [],
          ),
        ],
      ),
      backgroundColor: context.surface,
      showBorder: true,
      borderColor: context.surfaceDim,
      padding: const EdgeInsets.all(20),
    );
  }

  Color _getStatusColor(BuildContext context, String status) {
    switch (status.toLowerCase()) {
      case 'active':
      case 'scheduled':
        return context.tertiary;
      case 'completed':
        return context.secondary;
      case 'cancelled':
        return context.error;
      case 'pending':
        return context.primaryContainer;
      default:
        return context.onSurface.withValues(alpha: 0.6);
    }
  }
}
