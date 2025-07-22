import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class MyCourseScreen extends StatefulWidget {
  const MyCourseScreen({super.key});

  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  late final ScrollController _scrollController;
  late final MyCourseController controller;
  late final CourseWrapperController wrapperController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    controller = Get.find<MyCourseController>();
    wrapperController = Get.find<CourseWrapperController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(0);
        controller.fetchMyCourseList();
      }
    });
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
          await controller.fetchMyCourseList();
        },
        child: Scrollbar(
          controller: _scrollController,
          thickness: 5,
          radius: const Radius.circular(3),
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              _buildAppBar(context),
              MyCourseWrapperWidget(controller: controller)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Obx(() {
      return CustomTertiaryAppBarWidget(
        centerTitle: false,
        leading: IconButton.outlined(
          alignment: Alignment.centerLeft,
          onPressed: () => Get.back(),
          icon: const Icon(Icons.chevron_left, size: 24),
        ),
        pinned: true,
        toolbarHeight: 56,
        titleText: 'myCourse'.menu(),
        actions: [
          CustomGridOrListLayoutWidget(
            isGridView: controller.isGridView.value,
            onPressed: () => controller.toggleView(),
          ),
          if (wrapperController.canShowActionsMenu) ...[
            const SizedBox(width: 12),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Get.toNamed(AppRoute.createCourse);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: context.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.add_rounded,
                    size: 20,
                    color: context.onPrimary,
                  ),
                ),
              ),
            ),
          ],
          const SizedBox(width: 16)
        ],
      );
    });
  }
}
