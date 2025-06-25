import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class GuestVisitNavigationHelper {
  static void handleGuestVisitNavigation(
    BuildContext context,
    GuestVisitEntity visit,
  ) {
    final visitId = visit.id ?? '0';
    _navigateToDetailGuestVisit(visitId);
  }

  static void _navigateToDetailGuestVisit(String visitId) {
    // Note: Detail is now handled via bottom sheet, not separate route
    // This method is kept for backward compatibility but should use bottom sheet
  }

  static void navigateToCreateGuestVisit() {
    Get.toNamed('/guest-visit/create');
  }

  static void navigateToUpdateGuestVisit(GuestVisitEntity visit) {
    Get.toNamed('/guest-visit/update', arguments: {'guestVisit': visit});
  }

  static void showGuestVisitDetailBottomSheet(
    BuildContext context,
    GuestVisitEntity visit,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: DetailGuestVisitWidget(
          visit: visit,
          onEdit: () {
            Get.back();
            navigateToUpdateGuestVisit(visit);
          },
          onDelete: () {
            Get.back();
            _showDeleteConfirmationDialog(context, visit);
          },
        ),
      ),
    );
  }

  static void _showDeleteConfirmationDialog(
    BuildContext context,
    GuestVisitEntity visit,
  ) {
    showCustomConfirmDialog(
      context: context,
      title: 'Delete Guest Visit',
      message: 'Are you sure you want to delete this guest visit?',
      confirmText: 'Delete',
      onConfirm: () {
        Get.back();
        _deleteGuestVisit(visit.id ?? '0');
      },
      type: DialogType.warning,
      icon: Icons.delete_outline,
      showCloseButton: true,
      showActions: true,
    );
  }

  static void _deleteGuestVisit(String visitId) {
    Get.snackbar(
        'Info', 'Delete guest visit functionality will be implemented');
  }
}
