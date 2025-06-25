import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/guest_visit/presentation/screens/screen.dart';

final guestVisitRoutes = [
  GetPage(
    name: AppRoute.createGuestVisit,
    page: () => const CreateGuestVisitScreen(),
    binding: MultiGuestVisitBinding(
      controllers: [GuestVisitControllerType.guestVisitForm],
      userControllers: [UserControllerType.fetchListUser],
    ),
  ),
  GetPage(
    name: AppRoute.guestVisit,
    page: () => const GuestVisitScreen(),
    binding: MultiGuestVisitBinding(
      controllers: [
        GuestVisitControllerType.fetchListGuestVisit,
        GuestVisitControllerType.fetchGuestVisitDetail,
        GuestVisitControllerType.deleteGuestVisit,
      ],
    ),
  ),
  GetPage(
    name: AppRoute.updateGuestVisit,
    page: () => const UpdateGuestVisitScreen(),
    binding: MultiGuestVisitBinding(
      controllers: [
        GuestVisitControllerType.guestVisitForm,
        GuestVisitControllerType.fetchGuestVisitDetail,
      ],
      userControllers: [UserControllerType.fetchListUser],
    ),
  ),
];
