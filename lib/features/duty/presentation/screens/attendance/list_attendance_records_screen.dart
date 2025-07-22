import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListAttendanceRecordsScreen extends StatefulWidget {
  const ListAttendanceRecordsScreen({super.key});

  @override
  State<ListAttendanceRecordsScreen> createState() =>
      _ListAttendanceRecordsScreenState();
}

class _ListAttendanceRecordsScreenState
    extends State<ListAttendanceRecordsScreen> {
  late ListAttendanceRecordsController controller;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    controller = Get.find<ListAttendanceRecordsController>();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              _buildAppBar(),
              ListAttendanceRecordsWrapperWidget(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return CustomTertiaryAppBarWidget(
      titleText: 'attendanceRecords'.menu(),
      pinned: true,
      toolbarHeight: 56,
      actions: [
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
                builder: (context) => FilterDutyAttendanceBottomSheetWidget(
                  controller: controller,
                  showAllFilters: false,
                ),
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
      ],
    );
  }
}
