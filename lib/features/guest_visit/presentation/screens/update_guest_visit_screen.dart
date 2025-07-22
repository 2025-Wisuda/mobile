import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateGuestVisitScreen extends StatefulWidget {
  const UpdateGuestVisitScreen({super.key});

  @override
  State<UpdateGuestVisitScreen> createState() => _UpdateGuestVisitScreenState();
}

class _UpdateGuestVisitScreenState extends State<UpdateGuestVisitScreen> {
  late GuestVisitFormController controller;
  late dynamic guestVisit;

  @override
  void initState() {
    super.initState();
    controller = Get.find<GuestVisitFormController>();
    final arguments = Get.arguments as Map<String, dynamic>?;
    guestVisit = arguments?['guestVisit'];
    if (guestVisit != null) {
      controller.loadGuestVisitForUpdate(guestVisit);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context),
      ),
      body: SaveGuestVisitWrapperWidget(controller: controller),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'updateGuestVisit'.menu(),
      onBackPressed: () {
        Get.back();
        Future.microtask(() {
          controller.clearForm();
          controller.resetState();
        });
      },
    );
  }
}
