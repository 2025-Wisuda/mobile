import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchGuestVisitFormWidget extends StatelessWidget {
  const SearchGuestVisitFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListGuestVisitController>();

    return CustomSearchFormWidget(
      controller: controller.searchController,
      focusNode: controller.getFocusNode('search'),
      keyboardType: TextInputType.text,
      onChanged: (value) => controller.search(value),
      hintText: 'Search guest visits...',
    );
  }
}
