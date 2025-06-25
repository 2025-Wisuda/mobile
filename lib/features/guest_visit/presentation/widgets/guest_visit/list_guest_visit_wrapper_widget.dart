import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/guest_visit.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListGuestVisitWrapperWidget extends StatelessWidget {
  final ListGuestVisitController c;
  const ListGuestVisitWrapperWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _buildSearchSection(context),
      const SizedBox(height: 16),
      _buildListSection(context),
      _buildStateHandler(context),
    ]);
  }

  Widget _buildSearchSection(BuildContext context) {
    return CustomSearchFormWidget(
      controller: c.searchController,
      focusNode: c.getFocusNode('search'),
      keyboardType: TextInputType.text,
      onChanged: (value) => c.search(value),
      hintText: 'Search guest visits...',
    );
  }

  Widget _buildListSection(BuildContext context) {
    return Expanded(
      child: Obx(() {
        final state = c.state;
        switch (state) {
          case FetchStateEnum.loading:
            return const Center(child: CircularProgressIndicator());
          case FetchStateEnum.success:
            return _buildVisitList(context);
          case FetchStateEnum.failure:
            return _buildErrorWidget(context);
          default:
            return const SizedBox.shrink();
        }
      }),
    );
  }

  Widget _buildVisitList(BuildContext context) {
    final visits = c.guestVisitList;
    if (visits.isEmpty) {
      return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.history,
              size: 64, color: context.onSurface.withValues(alpha: 0.3)),
          const SizedBox(height: 16),
          Text('No guest visits found',
              style: context
                  .bodyLargeW(500)
                  .copyWith(color: context.onSurface.withValues(alpha: 0.7))),
        ]),
      );
    }

    return RefreshIndicator(
      onRefresh: () => c.refresh(),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: visits.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final visit = visits[index];
          return GuestVisitItemWidget(
            visit: visit,
            onTap: () => _onVisitTap(visit),
            onEdit: visit.canEdit == true ? () => _onEditVisit(visit) : null,
            onDelete:
                visit.canEdit == true ? () => _onDeleteVisit(visit) : null,
          );
        },
      ),
    );
  }

  Widget _buildErrorWidget(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.error_outline, size: 64, color: context.error),
        const SizedBox(height: 16),
        Text(c.errorMessage,
            style: context.bodyLargeW(500).copyWith(color: context.error)),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => c.refresh(),
          child: Text('Retry'),
        ),
      ]),
    );
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage;
      switch (state) {
        case FetchStateEnum.failure:
          Future.microtask(() => _handleFailureState(errorMessage));
          break;
        default:
          break;
      }
      return const SizedBox.shrink();
    });
  }

  void _onVisitTap(dynamic visit) {
    _showDetailBottomSheet(Get.context!, visit);
  }

  void _onEditVisit(dynamic visit) {
    _navigateToUpdate(visit);
  }

  void _onDeleteVisit(dynamic visit) {
    _showDeleteConfirmation(Get.context!, visit);
  }

  void _showDetailBottomSheet(BuildContext context, visit) {
    // Ensure required controllers are bound before showing detail
    _ensureDetailControllers();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: SingleChildScrollView(
                child: DetailGuestVisitWidget(
                  visit: visit,
                  onEdit: () {
                    Get.back();
                    _navigateToUpdate(visit);
                  },
                  onDelete: () {
                    Get.back();
                    _showDeleteConfirmation(context, visit);
                  },
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
                style: IconButton.styleFrom(
                  backgroundColor: context.surface.withValues(alpha: 0.9),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _ensureDetailControllers() {
    if (!Get.isRegistered<FetchGuestVisitDetailUsecase>()) {
      Get.lazyPut<FetchGuestVisitDetailUsecase>(
        () => FetchGuestVisitDetailUsecase(Get.find<GuestVisitRepository>()),
      );
    }

    if (!Get.isRegistered<DetailGuestVisitController>()) {
      Get.lazyPut<DetailGuestVisitController>(
        () => DetailGuestVisitController(
            Get.find<FetchGuestVisitDetailUsecase>()),
      );
    }

    if (!Get.isRegistered<DeleteGuestVisitUsecase>()) {
      Get.lazyPut<DeleteGuestVisitUsecase>(
        () => DeleteGuestVisitUsecase(Get.find<GuestVisitRepository>()),
      );
    }
    if (!Get.isRegistered<DeleteGuestVisitController>()) {
      Get.lazyPut<DeleteGuestVisitController>(
        () => DeleteGuestVisitController(Get.find<DeleteGuestVisitUsecase>()),
      );
    }
  }

  void _navigateToUpdate(visit) {
    Get.toNamed('/guest-visit/update', arguments: {'guestVisit': visit});
  }

  void _showDeleteConfirmation(BuildContext context, visit) {
    showCustomConfirmDialog(
      context: context,
      title: 'guestVisit'.message('deleteTitle'),
      message: 'guestVisit'.message('deleteMessage'),
      confirmText: 'guestVisit'.message('deleteVisit'),
      cancelText: 'guestVisit'.message('cancel'),
      type: DialogType.destructive,
      icon: Icons.delete_outline,
      onConfirm: () async {
        _deleteVisit(visit);

        // Show success snackbar
        Get.snackbar(
          'guestVisit'.message('success'),
          'Guest visit berhasil dihapus',
          backgroundColor: Get.theme.colorScheme.errorContainer,
          colorText: Get.theme.colorScheme.onErrorContainer,
          icon: Icon(Icons.delete, color: Get.theme.colorScheme.error),
          snackPosition: SnackPosition.TOP,
          duration: const Duration(seconds: 3),
        );
      },
    );
  }

  void _deleteVisit(visit) {
    final deleteController = Get.find<DeleteGuestVisitController>();
    deleteController.deleteItem(visit.id!);
    c.fetchList();
  }

  void _handleFailureState(String errorMessage) {
    Get.snackbar('Error', errorMessage);
  }
}
