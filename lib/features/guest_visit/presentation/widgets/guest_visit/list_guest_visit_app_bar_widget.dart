import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListGuestVisitAppBarWidget extends StatelessWidget {
  const ListGuestVisitAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTertiaryAppBarWidget(
      pinned: false,
      toolbarHeight: 76,
      title: Row(
        children: [
          Flexible(child: SearchGuestVisitFormWidget()),
          const SizedBox(width: 12),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: context.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: context.primary.withValues(alpha: 0.2),
                width: 1,
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
                    builder: (context) => FilterGuestVisitBottomSheet(
                      c: Get.find<ListGuestVisitController>(),
                    ),
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
        icon: Icon(Icons.chevron_left, size: 24),
        style: IconButton.styleFrom(
          side: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
      ),
    );
  }
}
