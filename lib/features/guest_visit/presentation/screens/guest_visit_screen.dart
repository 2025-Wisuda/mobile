import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/routes/app_route.dart';
import 'package:mobile/features/face_recognition/domain/entities/face_recognition_config.dart';
import 'package:mobile/features/guest_visit/presentation/_helpers/_internal_delete_guest_visit_helper.dart';
import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class GuestVisitScreen extends StatefulWidget {
  const GuestVisitScreen({super.key});

  @override
  State<GuestVisitScreen> createState() => _GuestVisitScreenState();
}

class _GuestVisitScreenState extends State<GuestVisitScreen> {
  late final ScrollController _scrollController;
  late final ListGuestVisitController controller;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    controller = Get.find<ListGuestVisitController>();
    controller.fetchList();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      controller.loadMore();
    }
  }

  Future<void> _startFaceRecognition() async {
    try {
      final config = FaceRecognitionConfig.guestVisit(
        onSuccess: (response) async {
          final details = response.faceRecognitionDetails;
          if (details != null && details.detectedIdentifier != null) {
            final userId = details.detectedIdentifier!;
            final userName = details.detectedName ?? 'Unknown User';

            Get.back();

            final result =
                await Get.toNamed(AppRoute.createGuestVisit, arguments: {
              'preFilledVisitorId': userId,
              'preFilledVisitorName': userName,
            });
            if (result != null &&
                result is Map &&
                result['shouldRefresh'] == true) {
              await controller.fetchList();
            }
          }
        },
        onFailure: (reason, attempts) async {
          Get.back();

          // Navigate to create screen for manual input
          final result = await Get.toNamed(AppRoute.createGuestVisit);
          if (result != null &&
              result is Map &&
              result['shouldRefresh'] == true) {
            await controller.fetchList();
          }
        },
        onConnectionFailure: (error) async {
          Get.back();

          // Navigate to create screen for manual input
          final result = await Get.toNamed(AppRoute.createGuestVisit);
          if (result != null &&
              result is Map &&
              result['shouldRefresh'] == true) {
            await controller.fetchList();
          }
        },
      );

      await Get.toNamed(AppRoute.realTimeFaceRecognition, arguments: {
        'config': config,
      });
    } catch (e) {
      // Navigate to create screen for manual input
      final result = await Get.toNamed(AppRoute.createGuestVisit);
      if (result != null && result is Map && result['shouldRefresh'] == true) {
        await controller.fetchList();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _startFaceRecognition,
        child: const Icon(Icons.add),
      ),
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await controller.fetchList();
        },
        child: Scrollbar(
          controller: _scrollController,
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              _buildAppBar(context),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: SearchGuestVisitFormWidget(controller: controller),
                ),
              ),
              ListGuestVisitWrapperWidget(
                controller: controller,
                onUpdate: (guestVisit) async {
                  final result = await Get.toNamed(AppRoute.updateGuestVisit,
                      arguments: {'guestVisit': guestVisit});
                  if (result != null &&
                      result is Map &&
                      result['shouldRefresh'] == true) {
                    await controller.fetchList();
                  }
                },
                onDelete: (guestVisit) async {
                  final result =
                      await DeleteGuestVisitHelper.showDeleteConfirmation(
                          context, guestVisit);
                  if (result != null &&
                      result is Map &&
                      result['shouldRefresh'] == true) {
                    await controller.fetchList();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomTertiaryAppBarWidget(
      centerTitle: false,
      leading: IconButton.outlined(
        alignment: Alignment.centerLeft,
        onPressed: () => Get.back(),
        icon: const Icon(Icons.chevron_left, size: 24),
      ),
      pinned: true,
      toolbarHeight: 56,
      titleText: 'guestVisit'.menu(),
      actions: [
        // Material(
        //   borderRadius: BorderRadius.circular(10),
        //   color: Colors.transparent,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(10),
        //     onTap: () {
        //       Get.toNamed(AppRoute.createGuestVisit);
        //     },
        //     child: Container(
        //       width: 40,
        //       height: 40,
        //       decoration: BoxDecoration(
        //         color: context.primary,
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Icon(
        //         Icons.add_rounded,
        //         size: 20,
        //         color: context.onPrimary,
        //       ),
        //     ),
        //   ),
        // ),
        const SizedBox(width: 12),
        Obx(() {
          final hasFilters = controller.hasFiltersApplied;
          return IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                enableDrag: true,
                isDismissible: true,
                useSafeArea: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (context) =>
                    GuestVisitFilterBottomSheetWidget(controller: controller),
              );
            },
            icon: Icon(
              hasFilters ? Icons.filter_list_off : Icons.filter_list,
              color: hasFilters ? context.primary : context.onSurface,
            ),
            style: IconButton.styleFrom(
              foregroundColor: context.onSurface,
              overlayColor: context.primary.withValues(alpha: 0.1),
            ),
          );
        }),
        const SizedBox(width: 16),
      ],
    );
  }
}
