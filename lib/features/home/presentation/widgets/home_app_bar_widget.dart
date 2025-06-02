// part of 'home_wrapper_widget.dart'

// class HomeAppBarWidget extends StatelessWidget {
//   const HomeAppBarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final userController = Get.find<UserController>();
//     final homeController = Get.find<HomeController>();

//     return Obx(() {
//       final user = userController.userEntity.value;
//       final firstName = user?.firstNameStr;
//       final lastName = user?.lastNameStr;
//       final fullName = user?.fullNameStr;
//       final avatar = user?.avatarStr;
//       final username = user?.usernameStr;

//       return SliverAppBar(
//         expandedHeight: 70,
//         floating: false,
//         pinned: true,
//         flexibleSpace: FlexibleSpaceBar(
//           background: SafeArea(
//             child: Column(
//               children: [
//                 const SizedBox(height: 16),
//                 Row(
//                   spacing: 8,
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: CustomProfilePictureWidget(
//                         imageUrl: avatar ?? '',
//                         radiusImage: 52,
//                         firstName: firstName ?? '',
//                         lastName: lastName ?? '',
//                         username: username ?? '',
//                       ),
//                     ),
//                     Column(
//                       spacing: 2,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           i18n.tr(homeController.greetingKey),
//                           style: context.bodyMediumW(500),
//                         ),
//                         Text(
//                           user?.firstName != null
//                               ? (fullName ?? '')
//                               : (username ??
//                                   i18n.tr('features.user.form.label.username')),
//                           style: context.bodySmallW(500),
//                         ),
//                       ],
//                     ),
//                     const Spacer(),
//                     IconButton(
//                       onPressed: () {},
//                       icon: customImageIconWidget(
//                         imagePath: IconConstant.bellOutlineIcon,
//                       ),
//                     ),
//                   ],
//                 ).px(24),
//               ],
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }
