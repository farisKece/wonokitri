import 'package:get/get.dart';
import 'package:wonokitri/app/modules/AccountScreen/controllers/account_screen_controller.dart';
import 'package:wonokitri/app/modules/AccountScreen/views/account_screen_view.dart';
import 'package:wonokitri/app/modules/MapsScreen/controllers/maps_screen_controller.dart';
import 'package:wonokitri/app/modules/MapsScreen/views/maps_screen_view.dart';
import 'package:wonokitri/app/modules/PaymentScreen/controllers/payment_screen_controller.dart';
import 'package:wonokitri/app/modules/PaymentScreen/views/payment_screen_view.dart';
import 'package:wonokitri/app/modules/WishlistScreen/controllers/wishlist_screen_controller.dart';
import 'package:wonokitri/app/modules/WishlistScreen/views/wishlist_screen_view.dart';
import 'package:wonokitri/app/modules/home/controllers/home_controller.dart';
import 'package:wonokitri/app/modules/home/views/home_view.dart';

class NavigationController extends GetxController {
  final homeC = Get.lazyPut(() => HomeController());
  final accountC = Get.lazyPut(() => AccountScreenController());
  final mapC = Get.lazyPut(() => MapsScreenController());
  final paymenC = Get.lazyPut(() => PaymentScreenController());
  final wishC = Get.lazyPut(() => WishlistScreenController());
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeView(),
    const WishlistScreenView(),
    const MapsScreenView(),
    const PaymentScreenView(),
    const AccountScreenView(),
  ];
}
