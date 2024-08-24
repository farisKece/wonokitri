import 'package:get/get.dart';
import 'package:wonokitri/app/modules/AccountScreen/controllers/account_screen_controller.dart';
import 'package:wonokitri/app/modules/AccountScreen/views/account_screen_view.dart';
import 'package:wonokitri/app/modules/FeatureScreen/controllers/feature_screen_controller.dart';
import 'package:wonokitri/app/modules/FeatureScreen/views/feature_screen_view.dart';
import 'package:wonokitri/app/modules/MapsScreen/controllers/maps_screen_controller.dart';
import 'package:wonokitri/app/modules/MapsScreen/views/maps_screen_view.dart';
import 'package:wonokitri/app/modules/explore/controllers/explore_controller.dart';
import 'package:wonokitri/app/modules/explore/views/explore_view.dart';
import 'package:wonokitri/app/modules/home/controllers/home_controller.dart';
import 'package:wonokitri/app/modules/home/views/home_view.dart';

class NavigationController extends GetxController {
  final homeC = Get.lazyPut(() => HomeController());
  final accountC = Get.lazyPut(() => AccountScreenController());
  final mapC = Get.lazyPut(() => MapsScreenController());
  final paymenC = Get.lazyPut(() => FeatureScreenController());
  final wishC = Get.lazyPut(() => ExploreController());
  final RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    homeC;
    accountC;
    mapC;
    paymenC;
    wishC;
    super.onInit();
  }

  final screens = [
    HomeView(),
    const ExploreView(),
    const MapsScreenView(),
    const FeatureScreenView(),
    const AccountScreenView(),
  ];
}
