import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/core/constants/illustration_constant.dart';
import 'dialog.dart';

class CustomDialogErrorWidget extends StatelessWidget {
  final String? errorText;
  const CustomDialogErrorWidget({
    super.key,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialogWidget(
      imageDialog: IllustrationConstant.loginIllustration,
      titleText: 'general.error.default'.tr(),
      descriptionText: errorText,
    );
  }
}
