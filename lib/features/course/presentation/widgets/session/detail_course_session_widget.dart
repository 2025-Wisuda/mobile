import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseSessionWidget extends StatefulWidget {
  final CourseSessionEntity? courseSession;

  const DetailCourseSessionWidget({super.key, this.courseSession});

  @override
  State<DetailCourseSessionWidget> createState() =>
      _DetailCourseSessionWidgetState();
}

class _DetailCourseSessionWidgetState extends State<DetailCourseSessionWidget> {
  bool _isTeachingAssistantsExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        _buildDetailsSection(context),
        if (widget.courseSession?.teachingAssistants?.isNotEmpty == true)
          _buildTeachingAssistantsSection(context),
      ],
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
              if (widget.courseSession?.title?.isNotEmpty == true)
                CardSectionHelpers.metadataRow(
                  context,
                  icon: Icons.category_outlined,
                  text: widget.courseSession?.titleStr ?? '',
                  size: MetadataSize.large,
                ),
              if (widget.courseSession?.date != null)
                CardSectionHelpers.metadataRow(
                  context,
                  icon: Icons.calendar_today_outlined,
                  text: widget.courseSession?.dateFullDate ?? '',
                  size: MetadataSize.large,
                ),
              if (widget.courseSession?.startTime?.isNotEmpty == true)
                CardSectionHelpers.metadataRow(
                  context,
                  icon: Icons.access_time_outlined,
                  text:
                      '${widget.courseSession?.startTimeFormatted} - ${widget.courseSession?.endTimeFormatted}',
                  size: MetadataSize.large,
                ),
              // if (widget.courseSession?.status?.isNotEmpty == true)
              //   Row(
              //     children: [
              //       Icon(Icons.flag_outlined,
              //           size: 16, color: context.onSurfaceVariant),
              //       const SizedBox(width: 6),
              //       CardSectionHelpers.statusBadge(
              //         context,
              //         label: widget.courseSession?.status ?? '',
              //         backgroundColor: _getStatusColor(
              //             context, widget.courseSession?.status ?? ''),
              //         textColor: context.onPrimary,
              //         size: StatusBadgeSize.small,
              //       ),
              //     ],
              //   ),
            ],
          ),
        ],
      ),
      showBorder: true,
      padding: const EdgeInsets.all(20),
    );
  }

  Widget _buildTeachingAssistantsSection(BuildContext context) {
    return CustomCardItemWidget(
      mainContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isTeachingAssistantsExpanded = !_isTeachingAssistantsExpanded;
              });
            },
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
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
                    label:
                        '${widget.courseSession?.teachingAssistants?.length ?? 0}',
                    backgroundColor: context.primary,
                    textColor: context.onPrimary,
                    size: StatusBadgeSize.small,
                  ),
                  const SizedBox(width: 8),
                  AnimatedRotation(
                    turns: _isTeachingAssistantsExpanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: context.onSurfaceVariant,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: const SizedBox.shrink(),
            secondChild: Column(
              children: [
                const Divider(),
                Column(
                  children: widget.courseSession?.teachingAssistants?.map((ta) {
                        return UserCardItemWidget(
                          name: ta.fullNameOrUsername,
                          subtitle: null,
                          imageUrl: ta.avatar,
                          showBorder: false,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 6),
                          margin: EdgeInsets.zero,
                        );
                      }).toList() ??
                      [],
                ),
              ],
            ),
            crossFadeState: _isTeachingAssistantsExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 200),
          ),
        ],
      ),
      showBorder: true,
      padding: const EdgeInsets.all(20),
    );
  }

  // Color _getStatusColor(BuildContext context, String status) {
  //   switch (status.toLowerCase()) {
  //     case 'active':
  //     case 'scheduled':
  //       return context.tertiary;
  //     case 'completed':
  //       return context.secondary;
  //     case 'cancelled':
  //       return context.error;
  //     case 'pending':
  //       return context.primaryContainer;
  //     default:
  //       return context.onSurface.withValues(alpha: 0.6);
  //   }
  // }
}
