import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/duty/domain/_enums/_internal_duty_attendance_status_enum.dart';
import 'package:mobile/features/duty/duty.dart';
import 'package:mobile/features/duty/presentation/_helpers/duty_schedule_helpers.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class AttendanceRecordsItemWidget extends StatelessWidget {
  final DutyAttendanceEntity attendance;
  final bool showAssistant;
  final bool showAction;

  const AttendanceRecordsItemWidget({
    super.key,
    required this.attendance,
    this.showAssistant = false,
    this.showAction = true,
  });

  @override
  Widget build(BuildContext context) {
    final status = DutyAttendanceStatusEnum.fromString(attendance.status);

    return CustomCardItemWidget(
      onTap: () {
        DetailDutyAttendanceBinding().dependencies();
        final controller = Get.find<DetailDutyAttendanceController>();
        controller.clearEntity();
        controller.fetchDetail(attendance.id ?? '');
        detailDutyAttendanceBottomSheetWidget(
          context,
          controller,
        );
      },
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: EdgeInsets.zero,
      mainContent: _buildInfoSection(context),
      trailingSection: _buildActionSection(context, status),
      showBorder: true,
    );
  }

  Widget _buildInfoSection(BuildContext context) {
    final date =
        attendance.date != null ? DateTime.tryParse(attendance.date!) : null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (date != null)
          Row(
            children: [
              Icon(Icons.calendar_today, size: 14, color: context.onSurface),
              const SizedBox(width: 8),
              Text(
                DateHelper.formatDayMonthYear(date: date),
                style: context.titleSmallW(500),
              ),
            ],
          ),
        if (showAssistant && attendance.assistantDisplayName.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              children: [
                Icon(Icons.person, size: 18, color: context.onSurfaceVariant),
                const SizedBox(width: 8),
                Text(
                  attendance.assistantDisplayName,
                  style: context.bodyMediumW(500).copyWith(
                        color: context.onSurfaceVariant,
                      ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildActionSection(
      BuildContext context, DutyAttendanceStatusEnum? status) {
    final isPastAttendance = attendance.date != null
        ? DateHelper.isPastDateTimeFromString(attendance.date!, attendance.endTime)
        : false;

    if (isPastAttendance) {
      return _buildStatusChip(context, status, isPast: true);
    }

    final isActionable =
        attendance.clockInTime == null || attendance.clockOutTime == null;
        
    if (isActionable && showAction) {
      return _buildActionButton(context, status);
    }

    return _buildStatusChip(context, status, isPast: false);
  }

  Widget _buildStatusChip(
      BuildContext context, DutyAttendanceStatusEnum? status,
      {required bool isPast}) {
    if (status == null) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: status.getStatusColor(context, isPast: isPast),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status.getStatusText(isPast: isPast),
        style: context.labelSmallW(500).copyWith(
              color: status.getStatusTextColor(context, isPast: isPast),
            ),
      ),
    );
  }

  Widget _buildActionButton(
      BuildContext context, DutyAttendanceStatusEnum? status) {
    final clockInText = 'dutySchedule'.message('clockIn');
    final clockOutText = 'dutySchedule'.message('clockOut');

    final canClockIn = attendance.canClockIn;

    return CustomSubmitButtonWidget(
      width: 100,
      height: 36,
      buttonType: CustomButtonType.filled,
      isFormValid: true,
      textButton: canClockIn ? clockInText : clockOutText,
      onPressed: () {
        final actionType = canClockIn ? 'clockIn' : 'clockOut';
        DutyScheduleHelpers.handleAttendanceAction(
          context,
          attendance: attendance,
          actionType: actionType,
        );
      },
    );
  }
}
