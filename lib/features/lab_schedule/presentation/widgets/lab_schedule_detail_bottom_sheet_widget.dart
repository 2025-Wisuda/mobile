// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

void labScheduleDetailBottomSheetWidget(
  BuildContext context,
  String labScheduleId,
) {
  final labScheduleController = Get.find<LabScheduleController>();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder:
        (context) => FractionallySizedBox(
          heightFactor: 0.4,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: DetailLabScheduleWrapperWidget(
                  labScheduleId: labScheduleId,
                ),
              ).pt(48),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                    labScheduleController.fetchLabScheduleDetailState.value =
                        FetchStateEnum.initial;
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        ),
  );
}
