import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

/// Internal helper for empty state logic
class InternalEmptyStateHelper {
  static Widget buildEmptyStateWidget(
      BuildContext context, String? approvalStatus) {
    final title = _getEmptyStateTitle(approvalStatus);
    final subtitle = _getEmptyStateSubtitle(approvalStatus);

    return customHandlingStateWidget(
      context,
      item: Icon(
        Icons.event_busy_outlined,
        size: 48,
        color: context.onSurface.withValues(alpha: 0.6),
      ),
      title: title,
      subtitle: subtitle,
    );
  }

  /// Gets empty state title based on approval status
  static String _getEmptyStateTitle(String? approvalStatus) {
    if (approvalStatus == null) {
      return 'roomBooking'.message('noBookingsTitle');
    }

    switch (approvalStatus.toLowerCase()) {
      case 'menunggu':
        return 'roomBooking'.message('noPendingBookingsTitle');
      case 'disetujui':
        return 'roomBooking'.message('noApprovedBookingsTitle');
      case 'ditolak':
        return 'roomBooking'.message('noRejectedBookingsTitle');
      default:
        return 'roomBooking'.message('noBookingsTitle');
    }
  }

  /// Gets empty state subtitle based on approval status
  static String _getEmptyStateSubtitle(String? approvalStatus) {
    if (approvalStatus == null) {
      return 'roomBooking'.message('noBookingsSubtitle');
    }

    switch (approvalStatus.toLowerCase()) {
      case 'menunggu':
        return 'roomBooking'.message('noPendingBookingsSubtitle');
      case 'disetujui':
        return 'roomBooking'.message('noApprovedBookingsSubtitle');
      case 'ditolak':
        return 'roomBooking'.message('noRejectedBookingsSubtitle');
      default:
        return 'roomBooking'.message('noBookingsSubtitle');
    }
  }
}
