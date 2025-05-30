// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomUserAppBarWidget extends StatelessWidget {
  final String? titleAppBar;
  final Function()? onTapSearchButton;
  final bool showSearchButton;
  final bool showQrButton;
  final Color? backgroundColor;
  final Widget? actionButton;
  final Widget? backButton;
  final WidgetStateProperty<Color?>? iconBackgroundColor;
  final Widget? trailingButton;
  final Function()? onTapTrailingButton;
  final bool showTrailing;
  final bool showBackButton;
  final Color? backButtonBorderColor;
  final Function()? onTapBackButton;
  final EdgeInsetsGeometry? titlePadding;

  const CustomUserAppBarWidget({
    super.key,
    this.titleAppBar,
    this.onTapSearchButton,
    this.showSearchButton = false,
    this.showQrButton = false,
    this.backgroundColor,
    this.actionButton,
    this.backButton,
    this.iconBackgroundColor,
    this.trailingButton,
    this.onTapTrailingButton,
    this.showTrailing = false,
    this.showBackButton = true,
    this.backButtonBorderColor,
    this.onTapBackButton,
    this.titlePadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        border: Border(bottom: BorderSide(color: context.shadow, width: 1)),
      ),
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (showBackButton)
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadiusConstant.kDefaultBorderRadiusCircle,
                      border: Border.all(
                        color: backButtonBorderColor ?? context.outline,
                      ),
                    ),
                    child:
                        backButton ??
                        CustomButtonBackgroundWidget(
                          iconButton: customImageIconWidget(
                            imagePath: IconConstant.chevronLeftOutlineIcon,
                          ),
                          onPressed: () {
                            onTapBackButton?.call() ?? Get.back();
                          },
                          backgroundColor:
                              iconBackgroundColor ??
                              WidgetStateProperty.all<Color?>(
                                Colors.transparent,
                              ),
                        ),
                  ),
                if (actionButton != null) const Spacer(),
                if (showSearchButton)
                  CustomButtonBackgroundWidget(
                    iconButton: customImageIconWidget(
                      imagePath: IconConstant.searchOutlineIcon,
                    ),
                    onPressed: onTapSearchButton,
                    backgroundColor:
                        iconBackgroundColor ??
                        WidgetStateProperty.all<Color?>(Colors.transparent),
                  ),
                if (showTrailing)
                  CustomButtonBackgroundWidget(
                    iconButton:
                        trailingButton ??
                        customImageIconWidget(
                          imagePath: IconConstant.searchOutlineIcon,
                        ),
                    onPressed: onTapTrailingButton,
                    backgroundColor:
                        iconBackgroundColor ??
                        WidgetStateProperty.all<Color?>(Colors.transparent),
                  ),
                if (actionButton != null) actionButton!,
              ],
            ),
            Padding(
              padding: titlePadding ?? const EdgeInsets.all(0),
              child: Center(
                child: Text(
                  titleAppBar ?? '',
                  style: context.bodyLargeW(600),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
