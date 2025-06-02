// Flutter imports:

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/di/di.dart';
import 'package:mobile/features/auth/presentation/presentation.dart';
import 'package:mobile/features/menu/presentation/controllers/profile_menu_controller.dart';
import 'package:mobile/features/menu/presentation/widgets/widget.dart';
import 'package:mobile/features/user/domain/entities/user_entity.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

part 'profile_app_bar_widget.dart';
part 'profile_button_logout_widget.dart';
part 'profile_menu_section_widget.dart';

class ProfileWrapperWidget extends StatelessWidget {
  const ProfileWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ProfileAppBarWidget(),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 24,
              children: [
                const ProfileMenuSectionWidget(),
                buttonLogout(context).pt(8),
              ],
            ).p(24),
          ),
        ],
      ),
    );
  }
}
