// part of 'home_wrapper_widget.dart'

// class HomeDutyScheduleSectionWidget extends StatelessWidget {
//   const HomeDutyScheduleSectionWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return _content(context);
//   }

//   Widget _content(BuildContext context) {
//     final dutyScheduleController = Get.find<DutyScheduleController>();
//     final dayKey = DateHelper.getCurrentDayInEnglish().toLowerCase();

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       dutyScheduleController.fetchDutySchedule(
//         targetDayKey: dayKey,
//         scheduleFilterParamsModel: DutyScheduleFilterParamsModel(
//           page: 1,
//           pageSize: 10,
//           days: dayKey,
//         ),
//       );
//     });

//     return Obx(() {
//       final state =
//           dutyScheduleController.fetchDutyScheduleByDaysState[dayKey] ??
//           FetchStateEnum.initial;
//       final schedules =
//           dutyScheduleController.listDutyScheduleEntity.value?.data ?? [];

//       final errorMessage = dutyScheduleController.errorMessage.value;
//       final emptyMessage = i18n.tr('features.home.dutySchedule.empty');
//       final loadedWidget = Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _header(context),
//           DutyScheduleListTeachingAssistantItemWidget(schedules: schedules),
//         ],
//       );
//       final loadingWidget = Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _header(context),
//           Skeletonizer(
//             child: DutyScheduleListTeachingAssistantItemWidget(
//               schedules: schedules,
//             ),
//           ),
//         ],
//       );
//       final emptyWidget = Column(
//         children: [
//           errorEmptyTextWidget(context, message: emptyMessage),
//           TextButton(
//             onPressed: () {
//               Get.toNamed(AppRoute.dutySchedule);
//             },
//             child: Text(
//               i18n.tr('features.home.dutySchedule.seeScheduleOtherDay'),
//               style: context.bodyMediumW(600).copyWith(color: context.primary),
//             ),
//           ),
//         ],
//       ).py(16);
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

//   Widget _header(BuildContext context) {
//     return Text(
//       i18n.tr('features.home.dutySchedule.title'),
//       style: context.bodyMediumW(600),
//     );
//   }
// }
