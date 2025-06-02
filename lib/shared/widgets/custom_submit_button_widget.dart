import 'package:flutter/material.dart';

import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomSubmitButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final bool isFormValid;
  final double height;
  final SubmitStateEnum? state;
  final String textButton;
  final double width;

  const CustomSubmitButtonWidget({
    super.key,
    required this.onPressed,
    this.isFormValid = false,
    this.height = 52,
    this.state = SubmitStateEnum.initial,
    required this.textButton,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(Size(width, height)),
        backgroundColor: WidgetStateProperty.all<Color>(
          isFormValid ? context.primaryFixed : context.inversePrimary,
        ),
      ),
      child:
          state == SubmitStateEnum.loading
              ? customPrimaryLoadingWidget
              : Text(
                textButton,
                style: context
                    .bodyMediumW(600)
                    .copyWith(
                      color:
                          isFormValid
                              ? context.surfaceContainer
                              : context.surface,
                    ),
              ),
    );
  }
}
