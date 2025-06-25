import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  late final ScrollController _scrollController;
  final listCourseController = Get.find<ListCourseController>();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
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
      listCourseController.loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      listCourseController.fetchList();
    });

    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await listCourseController.fetchList();
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
              ListCourseAppBarWidget(),
              ListCourseWrapperWidget(c: listCourseController)
            ],
          ),
        ),
      ),
    );
  }
}
