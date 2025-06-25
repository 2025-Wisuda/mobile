import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DutyScheduleItemWidget extends StatelessWidget {
  final DutyScheduleEntity schedule;

  const DutyScheduleItemWidget({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return UserCardItemWidget(
      name: schedule.nameStr,
      subtitle: null,
      imageUrl: schedule.avatar,
      trailing: schedule.status != null
          ? _buildStatusBadge(context, schedule.status!)
          : null,
      showBorder: true,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      margin: EdgeInsets.zero,
    );
  }

  Widget _buildStatusBadge(BuildContext context, String status) {
    return CardSectionHelpers.statusBadge(
      context,
      label: _getSimplifiedStatusText(status),
      backgroundColor: _getSimplifiedStatusColor(status, context),
      textColor: _getSimplifiedStatusTextColor(status, context),
      size: StatusBadgeSize.medium,
    );
  }

  String _getSimplifiedStatusText(String? status) {
    if (_isPresentStatus(status)) {
      return 'features.dutySchedule.text.present'.tr();
    } else if (_isNotYetPresentStatus(status)) {
      return 'features.dutySchedule.text.notYetPresent'.tr();
    } else {
      return 'features.dutySchedule.text.absent'.tr();
    }
  }

  Color _getSimplifiedStatusColor(String? status, BuildContext context) {
    if (_isPresentStatus(status)) {
      return context.tertiaryContainer;
    } else if (_isNotYetPresentStatus(status)) {
      return context.outline;
    } else {
      return context.errorContainer;
    }
  }

  Color _getSimplifiedStatusTextColor(String? status, BuildContext context) {
    if (_isPresentStatus(status)) {
      return context.tertiary;
    } else if (_isNotYetPresentStatus(status)) {
      return context.onSurface;
    } else {
      return context.error;
    }
  }

  bool _isPresentStatus(String? status) {
    switch (status?.toLowerCase()) {
      case 'hadir':
      case 'terlambat':
      case 'pulang lebih awal':
        return true;
      default:
        return false;
    }
  }

  bool _isNotYetPresentStatus(String? status) {
    return status?.toLowerCase() == 'belum hadir';
  }
}
