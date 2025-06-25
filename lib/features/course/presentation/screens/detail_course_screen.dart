import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseScreen extends StatefulWidget {
  final String courseId;

  const DetailCourseScreen({super.key, required this.courseId});

  @override
  State<DetailCourseScreen> createState() => _DetailCourseScreenState();
}

class _DetailCourseScreenState extends State<DetailCourseScreen> {
  late final ScrollController _scrollController;
  late final DetailCourseController detailCourseController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    detailCourseController = Get.find<DetailCourseController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        detailCourseController.fetchDetail(widget.courseId);
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: DetailCourseAppBarWidget(),
      ),
      body: CustomRefreshWrapperWidget(
        onRefresh: () => detailCourseController.fetchDetail(widget.courseId),
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
              child: DetailCourseWrapperWidget(
                courseId: widget.courseId,
                c: detailCourseController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
