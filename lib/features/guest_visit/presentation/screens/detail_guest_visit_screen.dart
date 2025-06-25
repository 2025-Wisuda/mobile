import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailGuestVisitScreen extends StatefulWidget {
  final String guestVisitId;

  const DetailGuestVisitScreen({super.key, required this.guestVisitId});

  @override
  State<DetailGuestVisitScreen> createState() => _DetailGuestVisitScreenState();
}

class _DetailGuestVisitScreenState extends State<DetailGuestVisitScreen> {
  late final ScrollController _scrollController;
  late final DetailGuestVisitController detailGuestVisitController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    detailGuestVisitController = Get.find<DetailGuestVisitController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        detailGuestVisitController.fetchDetail(widget.guestVisitId);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guest Visit Details'),
        actions: [
          GuestVisitActionsMenuWidget(),
        ],
      ),
      body: CustomRefreshWrapperWidget(
        onRefresh: () =>
            detailGuestVisitController.fetchDetail(widget.guestVisitId),
        child: Scrollbar(
          controller: _scrollController,
          thickness: 5,
          radius: const Radius.circular(3),
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GetBuilder<DetailGuestVisitController>(
                builder: (c) => DetailGuestVisitWidget(
                  visit: c.entity.value ?? const GuestVisitEntity(),
                  onEdit: () => _handleEdit(),
                  onDelete: () => _handleDelete(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleEdit() {
    Get.toNamed('/guest-visit/update', parameters: {
      'guestVisitId': widget.guestVisitId,
    });
  }

  void _handleDelete() {
    final deleteWrapper = DeleteGuestVisitWrapperWidget(
      guestVisitId: widget.guestVisitId,
      visitorName: detailGuestVisitController.entity.value?.nameDisplay ?? '',
    );
    deleteWrapper.handleDelete(context);
  }
}
