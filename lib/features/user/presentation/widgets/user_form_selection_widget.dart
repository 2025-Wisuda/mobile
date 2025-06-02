// import 'package:flutter/material.dart';

// import 'package:easy_localization/easy_localization.dart' as i18n;
// import 'package:get/get.dart';

// import 'package:mobile/core/constants/constant.dart';
// import 'package:mobile/core/enums/states/fetch_state_enum.dart';
// import 'package:mobile/features/user/data/models/user_filter_params_model.dart';
// import 'package:mobile/features/user/domain/entities/user_entity_extension.dart';
// import 'package:mobile/features/user/presentation/controllers/user_controller.dart';
// import 'package:mobile/shared/extensions/extension.dart';
// import 'package:mobile/shared/widgets/widget.dart';

// class UserFormSelectionWidget extends StatelessWidget {
//   final Rx<TextEditingController> controller;
//   final Rx<FocusNode> focusNode;
//   final RxList<String> selectedIds;
//   final String? label;
//   final String hint;

//   const UserFormSelectionWidget({
//     super.key,
//     required this.controller,
//     required this.focusNode,
//     required this.selectedIds,
//     this.label,
//     required this.hint,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final userController = Get.find<UserController>();
//     final ScrollController scrollController = ScrollController();
//     final noUserFound = i18n.tr('features.user.fetchListUser.empty');

//     void fetchUsers(String query) async {
//       final params = UserFilterParamsModel(search: query);
//       await userController.fetchAllUser(
//         userFilterParamsModel: params,
//         stateTarget: userController.fetchListlUserState,
//       );
//     }

//     void setupScrollListener() {
//       scrollController.addListener(() {
//         if (scrollController.position.pixels ==
//                 scrollController.position.maxScrollExtent &&
//             !userController.isLoadingMore.value &&
//             !userController.isLastPage.value) {
//           userController.fetchAllUser(
//             userFilterParamsModel: UserFilterParamsModel(
//               search: controller.value.text,
//             ),
//             isLoadMore: true,
//             stateTarget: userController.fetchListlUserState,
//           );
//         }
//       });
//     }

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       fetchUsers('');
//       setupScrollListener();
//     });

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Obx(
//           () => CustomTextFormFieldWidget(
//             requiredField: false,
//             controller: controller.value,
//             focusNode: focusNode.value,
//             labelText: label,
//             hintText: hint,
//             keyboardType: TextInputType.text,
//             onChanged: fetchUsers,
//             suffixIcon:
//                 userController.fetchListlUserState.value ==
//                         FetchStateEnum.loading
//                     ? Align(
//                       alignment: AlignmentDirectional.centerEnd,
//                       child: SizedBox(
//                         width: 24,
//                         height: 24,
//                         child: CircularProgressIndicator(strokeWidth: 2),
//                       ),
//                     )
//                     : IconButton(
//                       icon: const Icon(Icons.search),
//                       onPressed: () => fetchUsers(controller.value.text),
//                     ),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Obx(
//           () => Wrap(
//             spacing: 4,
//             runSpacing: 2,
//             children:
//                 selectedIds.map((id) {
//                   final user = userController.listUserEntity.value?.data
//                       ?.firstWhereOrNull((u) => u.id == id);
//                   if (user == null) return const SizedBox.shrink();
//                   return Chip(
//                     label: Text(user.handleFullNameStr),
//                     onDeleted: () {
//                       selectedIds.remove(id);
//                       selectedIds.refresh();
//                     },
//                   );
//                 }).toList(),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Obx(() {
//           final users = userController.listUserEntity.value?.data ?? [];
//           if (users.isEmpty &&
//               userController.fetchListlUserState.value !=
//                   FetchStateEnum.loading) {
//             return Text(noUserFound, style: context.bodySmallW(500));
//           }
//           return Container(
//             height: 200,
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             decoration: BoxDecoration(
//               color: context.surface,
//               borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
//               border: Border.all(color: context.shadow),
//             ),
//             child: ListView.separated(
//               separatorBuilder: (_, __) => const Divider(),
//               controller: scrollController,
//               itemCount:
//                   users.length + (userController.isLoadingMore.value ? 1 : 0),
//               itemBuilder: (context, index) {
//                 if (index == users.length) {
//                   return const Center(
//                     child: CircularProgressIndicator(strokeWidth: 2),
//                   );
//                 }
//                 final user = users[index];
//                 return ListTile(
//                   contentPadding: EdgeInsets.zero,
//                   title: Text(
//                     user.handleFullNameStr,
//                     style: context.bodyMediumW(400),
//                   ),
//                   trailing: IconButton(
//                     icon: const Icon(Icons.add, size: 24),
//                     onPressed: () {
//                       if (!selectedIds.contains(user.id)) {
//                         selectedIds.add(user.id ?? '');
//                       }
//                     },
//                   ),
//                 );
//               },
//             ),
//           );
//         }),
//       ],
//     );
//   }
// }
