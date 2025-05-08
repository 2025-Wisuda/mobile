import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/constants/constant.dart';
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ).copyWith(top: 16, bottom: 16),
      decoration: BoxDecoration(color: backgroundColor ?? Colors.transparent),
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
                        color:
                            backButtonBorderColor ??
                            Theme.of(context).colorScheme.outline,
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
                const Spacer(),
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
            Center(
              child: Text(
                titleAppBar ?? '',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
