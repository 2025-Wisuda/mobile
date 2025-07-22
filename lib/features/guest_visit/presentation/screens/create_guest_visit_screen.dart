import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateGuestVisitScreen extends StatefulWidget {
  const CreateGuestVisitScreen({super.key});

  @override
  State<CreateGuestVisitScreen> createState() => _CreateGuestVisitScreenState();
}

class _CreateGuestVisitScreenState extends State<CreateGuestVisitScreen> {
  late final GuestVisitFormController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.find<GuestVisitFormController>();

    // Handle pre-filled data from face recognition
    final args = Get.arguments;
    if (args != null && args is Map) {
      final preFilledVisitorId = args['preFilledVisitorId'] as String?;
      final preFilledVisitorName = args['preFilledVisitorName'] as String?;

      if (preFilledVisitorId != null && preFilledVisitorName != null) {
        // Set as registered visitor with pre-filled data
        controller.isRegisteredVisitor.value = true;
        controller.selectedVisitorIds.assignAll([preFilledVisitorId]);
        controller.getController('visitor').text = preFilledVisitorName;
        controller.markFieldAsInteracted('visitor');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: _buildAppBar(context)),
      body: SaveGuestVisitWrapperWidget(controller: controller),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'createGuestVisit'.menu(),
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
