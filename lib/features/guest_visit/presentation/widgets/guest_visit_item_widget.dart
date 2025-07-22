import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class GuestVisitItemWidget extends StatelessWidget {
  final GuestVisitEntity visit;
  final String visitId;
  final Future<void> Function(GuestVisitEntity visit)? onUpdate;
  final Future<void> Function(GuestVisitEntity visit)? onDelete;

  const GuestVisitItemWidget({
    super.key,
    required this.visit,
    required this.visitId,
    this.onUpdate,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      onTap: () async {
        FetchGuestVisitDetailBinding().dependencies();
        final controller = Get.find<DetailGuestVisitController>();
        controller.clearEntity();
        controller.fetchDetail(visitId);
        final result =
            await detailGuestVisitBottomSheetWidget(context, controller);
        if (result != null &&
            result is Map &&
            result['shouldRefresh'] == true) {
          if (onUpdate != null) await onUpdate!(visit);
        }
      },
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: EdgeInsets.zero,
      mainContent: _buildContent(context),
      showBorder: true,
      trailingSection: CardSectionHelpers.trailingArrow(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    final date = DateHelper.formatDayMonthYear(
        date: DateTime.tryParse(visit.date ?? ''));
    final startTime = DateHelper.formatTime(visit.startTime ?? '');
    final endTime = DateHelper.formatTime(visit.endTime ?? '');

    final time = '$startTime - $endTime';
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(visit.nameDisplay ?? 'guestVisit'.message('unknownVisitor'),
          style: context.bodyLargeW(500)),
      _buildInfoRow(context, '$date ($time)'),
    ]);
  }

  Widget _buildInfoRow(BuildContext context, String value) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(value,
          style: context
              .bodySmallW(500)
              .copyWith(color: context.onSurface.withValues(alpha: 0.7))),
    ]);
  }
}
