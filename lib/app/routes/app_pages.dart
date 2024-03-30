import 'package:get/get.dart';

import '../modules/AccountScreen/bindings/account_screen_binding.dart';
import '../modules/AccountScreen/views/account_screen_view.dart';
import '../modules/DetailHomestay/bindings/detail_homestay_binding.dart';
import '../modules/DetailHomestay/views/detail_homestay_view.dart';
import '../modules/MapsScreen/bindings/maps_screen_binding.dart';
import '../modules/MapsScreen/views/maps_screen_view.dart';
import '../modules/PaymentScreen/bindings/payment_screen_binding.dart';
import '../modules/PaymentScreen/views/payment_screen_view.dart';
import '../modules/WishlistScreen/bindings/wishlist_screen_binding.dart';
import '../modules/WishlistScreen/views/wishlist_screen_view.dart';
import '../modules/detail_tour_package/bindings/detail_tour_package_binding.dart';
import '../modules/detail_tour_package/views/detail_tour_package_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_TOUR_PACKAGE,
      page: () => const DetailTourPackageView(),
      binding: DetailTourPackageBinding(),
    ),
    GetPage(
      name: _Paths.WISHLIST_SCREEN,
      page: () => const WishlistScreenView(),
      binding: WishlistScreenBinding(),
    ),
    GetPage(
      name: _Paths.MAPS_SCREEN,
      page: () => const MapsScreenView(),
      binding: MapsScreenBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_SCREEN,
      page: () => const PaymentScreenView(),
      binding: PaymentScreenBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_SCREEN,
      page: () => const AccountScreenView(),
      binding: AccountScreenBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => const NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_HOMESTAY,
      page: () => const DetailHomestayView(),
      binding: DetailHomestayBinding(),
    ),
  ];
}
