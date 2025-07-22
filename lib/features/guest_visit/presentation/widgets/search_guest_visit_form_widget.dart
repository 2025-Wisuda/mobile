import 'package:flutter/material.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchGuestVisitFormWidget extends StatelessWidget {
  final ListGuestVisitController controller;

  const SearchGuestVisitFormWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final key = '${controller.baseStateKey}SearchController';

    return SizedBox(
      height: 44,
      child: CustomSearchFormWidget(
        autoFocus: false,
        controller: controller.getController(key),
        focusNode: controller.getFocusNode(key),
        hintText: 'guestVisit'.message('searchPlaceholder'),
        keyboardType: TextInputType.text,
        onChanged: (value) {
          controller.setControllerValue(key, value);
          if (value.isEmpty) {
            controller.clearFilters();
          } else {
            controller.fetchList(filters: {'search': value});
          }
        },
        trailingIcon: [
          IconButton(
            onPressed: () {
              controller.clearFilters();
            },
            icon: Icon(
              Icons.close,
              color: context.onSurface.withValues(alpha: 0.8),
            ),
          )
        ],
      ),
    );
  }
}
