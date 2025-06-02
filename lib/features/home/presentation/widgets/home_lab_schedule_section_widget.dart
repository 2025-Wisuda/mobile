// part of 'home_wrapper_widget.dart'

// class HomeLabScheduleSectionWidget extends StatelessWidget {
//   const HomeLabScheduleSectionWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final labScheduleController = Get.find<LabScheduleController>();
//     final schedules =
//         labScheduleController.listLabScheduleEntity.value?.data ?? [];
//     final isEmpty = schedules.isEmpty;

//     return SizedBox(
//       width: double.infinity,
//       child: Card(
//         margin: const EdgeInsets.only(top: 16, bottom: 16),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
//         ),
//         elevation: 1,
//         child: Padding(
//           padding: EdgeInsets.only(
//             top: isEmpty ? 16 : 4,
//             left: 16,
//             right: 16,
//             bottom: 16,
//           ),
//           child: _content(context),
//         ),
//       ),
//     );
//   }

//   Widget _content(BuildContext context) {
//     final labScheduleController = Get.find<LabScheduleController>();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       labScheduleController.fetchListLabSchedule(
//         scheduleFilterParamsModel: LabScheduleFilterParamsModel(
//           page: 1,
//           pageSize: 10,
//           scheduleDate: DateHelper.formatIsoDate(),
//         ),
//         stateTarget: labScheduleController.fetchListLabScheduleState,
//       );
//     });
//     return Obx(() {
//       final menuController = Get.find<menu.MenuController>();

//       final state = labScheduleController.fetchListLabScheduleState.value;
//       final schedules =
//           labScheduleController.listLabScheduleEntity.value?.data ?? [];
//       final errorMessage = labScheduleController.errorMessage.value;
//       final emptyMessage = i18n.tr('features.home.labSchedule.empty');
//       final button = i18n.tr('features.home.labSchedule.seeScheduleOtherDay');

//       final loadedWidget = Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _labScheduleHeader(context),
//           ExpandableLabScheduleListWidget(schedules: schedules),
//         ],
//       );
//       final loadingWidget = Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _labScheduleHeader(context),
//           Skeletonizer(
//             child: ExpandableLabScheduleListWidget(schedules: schedules),
//           ),
//         ],
//       );
//       final emptyWidget = Column(
//         children: [
//           errorEmptyTextWidget(context, message: emptyMessage).pt(16),
//           TextButton(
//             onPressed: () {
//               menuController.pageController.jumpToPage(1);
//             },
//             child: Text(
//               button,
//               style: context.bodyMediumW(600).copyWith(color: context.primary),
//             ),
//           ),
//         ],
//       );
//       final errorWidget = errorEmptyTextWidget(context, message: errorMessage);

//       return state.toWidget(
//         loadingWidget: loadingWidget,
//         loadedWidget: loadedWidget,
//         emptyWidget: emptyWidget,
//         errorWidget: errorWidget,
//         initialWidget: loadingWidget,
//       );
//     });
//   }

//   Widget _labScheduleHeader(BuildContext context) {
//     final menuController = Get.find<menu.MenuController>();
//     final text = i18n.tr('features.home.labSchedule.title');
//     final button = i18n.tr('features.home.labSchedule.seeScheduleOtherDay');
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       spacing: 8,
//       children: [
//         Text(text, style: context.bodyMediumW(600)),
//         TextButton(
//           onPressed: () {
//             menuController.pageController.jumpToPage(1);
//           },
//           child: Text(
//             button,
//             style: context.bodyMediumW(600).copyWith(color: context.primary),
//           ),
//         ),
//       ],
//     );
//   }
// }
