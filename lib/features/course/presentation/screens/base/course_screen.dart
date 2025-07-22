import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  late final ScrollController _scrollController;
  late final ListCourseController controller;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    controller = Get.find<ListCourseController>();
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
          await controller.refresh();
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
              ListCourseWrapperWidget(controller: controller)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomTertiaryAppBarWidget(
        pinned: true,
        toolbarHeight: 76,
        title: Row(
          children: [
            Flexible(child: SearchCourseFormWidget()),
            const SizedBox(width: 12),
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: context.primary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: context.primary.withValues(alpha: 0.3),
                  width: 0.5,
                ),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      builder: (context) => FilterCourseBottomSheet(
                          controller: Get.find<CourseWrapperController>()),
                    );
                  },
                  icon: Icon(
                    Icons.filter_alt,
                    size: 20,
                    color: context.primary,
                  ),
                  style: IconButton.styleFrom(
                    foregroundColor: context.onSurface,
                    backgroundColor: Colors.transparent,
                    overlayColor: context.primary.withValues(alpha: 0.1),
                  ),
                ),
              ),
            )
          ],
        ),
        leading: IconButton.outlined(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.chevron_left, size: 24),
          style: IconButton.styleFrom(
            side: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ));
  }
}
