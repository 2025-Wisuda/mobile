import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/shared/widgets/button/custom_button_outline_widget.dart';

class CustomAlertDialogWidget extends StatelessWidget {
  final String? imageDialog;
  final String? titleText;
  final String? descriptionText;
  final Widget? actionOne;
  final Widget? actionTwo;

  const CustomAlertDialogWidget({
    super.key,
    this.imageDialog,
    this.titleText,
    this.descriptionText,
    this.actionOne,
    this.actionTwo,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double imageHeight = screenHeight * 0.2;

    assert(
      imageDialog != null && imageDialog!.isNotEmpty,
      'imageDialog must be provided',
    );

    final bool isSvg = imageDialog!.endsWith('.svg');

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusConstant.kDefaultBorderRadiusLarge,
      ),
      scrollable: true,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: <Widget>[
          if (isSvg)
            SvgPicture.asset(imageDialog!, height: imageHeight)
          else
            Image.asset(imageDialog!, height: imageHeight),
          Text(
            titleText ?? '',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            descriptionText ?? '',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      actionsAlignment:
          actionOne == null
              ? MainAxisAlignment.end
              : MainAxisAlignment.spaceEvenly,
      actions: <Widget>[
        actionOne ?? const SizedBox.shrink(),
        actionTwo ??
            CustomButtonOutlineWidget(
              textButton: 'general.options.close'.tr(),
              backgroundColor:
                  Theme.of(context).colorScheme.surfaceContainerHigh,
              borderColor: Theme.of(context).colorScheme.scrim,
            ),
      ],
    );
  }
}
