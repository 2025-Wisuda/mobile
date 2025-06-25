import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';

class CreateGuestVisitScreen extends StatelessWidget {
  const CreateGuestVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formController = Get.find<GuestVisitFormController>();

    // Reset for create mode
    WidgetsBinding.instance.addPostFrameCallback((_) {
      formController.resetForCreate();
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Guest Visit'),
        backgroundColor: context.surface,
        elevation: 0,
      ),
      body: CreateGuestVisitWrapperWidget(c: formController),
    );
  }
}
