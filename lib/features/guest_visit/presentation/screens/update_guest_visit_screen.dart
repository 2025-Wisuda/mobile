import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';

class UpdateGuestVisitScreen extends StatefulWidget {
  const UpdateGuestVisitScreen({super.key});

  @override
  State<UpdateGuestVisitScreen> createState() => _UpdateGuestVisitScreenState();
}

class _UpdateGuestVisitScreenState extends State<UpdateGuestVisitScreen> {
  late final GuestVisitFormController formController;

  @override
  void initState() {
    super.initState();
    formController = Get.find<GuestVisitFormController>();

    // Get guest visit data from arguments
    final arguments = Get.arguments as Map<String, dynamic>?;
    final guestVisit = arguments?['guestVisit'];

    if (guestVisit != null) {
      _loadInitialData(guestVisit);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Guest Visit'),
        backgroundColor: context.surface,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CreateGuestVisitWrapperWidget(c: formController),
      ),
    );
  }

  void _loadInitialData(dynamic guestVisit) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        formController.loadGuestVisitForUpdate(guestVisit);
      }
    });
  }
}
