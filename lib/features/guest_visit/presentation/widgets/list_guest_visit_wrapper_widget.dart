import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/guest_visit.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListGuestVisitWrapperWidget extends StatelessWidget {
  final ListGuestVisitController controller;
  final Future<void> Function(GuestVisitEntity visit)? onUpdate;
  final Future<void> Function(GuestVisitEntity visit)? onDelete;
  const ListGuestVisitWrapperWidget(
      {super.key, required this.controller, this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Obx(
        () => customSkeletonizerHandler(
            context: context,
            state: controller.state,
            feature: 'guestVisit',
            customErrorMessage: controller.stateDescription,
            customTitle: 'guestVisit'.message('empty'),
            onSuccess: () => _buildGuestVisitList(context)),
      ),
    );
  }

  Widget _buildGuestVisitList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          Obx(() {
            if (!controller.hasFiltersApplied) return const SizedBox.shrink();
            return FilterIndicatorSection(
              text: controller.filtersDescription,
              onClear: () => controller.clearFilters(),
            );
          }),
          Obx(() {
            final visitList = controller.visitList;
            final isLoadingMore = controller.isLoadingMore.value;

            return Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: visitList.length,
                  itemBuilder: (context, index) {
                    final visit = visitList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: GuestVisitItemWidget(
                        visit: visit,
                        visitId: visit.id ?? '',
                        onUpdate: onUpdate,
                        onDelete: onDelete,
                      ),
                    );
                  },
                ),
                if (isLoadingMore)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CustomPrimaryLoadingWidget(),
                    ),
                  ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
