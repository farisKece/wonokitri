import 'package:get/get.dart';

import '../modules/AccountScreen/bindings/account_screen_binding.dart';
import '../modules/AccountScreen/views/account_screen_view.dart';
import '../modules/DetailHomestay/bindings/detail_homestay_binding.dart';
import '../modules/DetailHomestay/views/detail_homestay_view.dart';
import '../modules/FeatureScreen/bindings/feature_screen_binding.dart';
import '../modules/FeatureScreen/views/feature_screen_view.dart';
import '../modules/MapsScreen/bindings/maps_screen_binding.dart';
import '../modules/MapsScreen/views/maps_screen_view.dart';
import '../modules/TourGuide/bindings/tour_guide_binding.dart';
import '../modules/TourGuide/views/tour_guide_view.dart';
import '../modules/TourGuideDetails/bindings/tour_guide_details_binding.dart';
import '../modules/TourGuideDetails/views/tour_guide_details_view.dart';
import '../modules/code_otp/bindings/code_otp_binding.dart';
import '../modules/code_otp/views/code_otp_view.dart';
import '../modules/daftar_tiket/bindings/daftar_tiket_binding.dart';
import '../modules/daftar_tiket/views/daftar_tiket_view.dart';
import '../modules/data_diri/bindings/data_diri_binding.dart';
import '../modules/data_diri/views/data_diri_view.dart';
import '../modules/detail_news/bindings/detail_news_binding.dart';
import '../modules/detail_news/views/detail_news_view.dart';
import '../modules/detail_tour_package/bindings/detail_tour_package_binding.dart';
import '../modules/detail_tour_package/views/detail_tour_package_view.dart';
import '../modules/e_ticket/bindings/e_ticket_binding.dart';
import '../modules/e_ticket/views/e_ticket_view.dart';
import '../modules/explore/bindings/explore_binding.dart';
import '../modules/explore/views/explore_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/fotografer_details/bindings/fotografer_details_binding.dart';
import '../modules/fotografer_details/views/fotografer_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homestay_details/bindings/homestay_details_binding.dart';
import '../modules/homestay_details/views/homestay_details_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/paket_wisata_all/bindings/paket_wisata_all_binding.dart';
import '../modules/paket_wisata_all/views/paket_wisata_all_view.dart';
import '../modules/payment_gateway/bindings/payment_gateway_binding.dart';
import '../modules/payment_gateway/views/payment_gateway_view.dart';
import '../modules/qris_payment/bindings/qris_payment_binding.dart';
import '../modules/qris_payment/views/qris_payment_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/resset_password/bindings/resset_password_binding.dart';
import '../modules/resset_password/views/resset_password_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/wisata_event_all/bindings/wisata_event_all_binding.dart';
import '../modules/wisata_event_all/views/wisata_event_all_view.dart';
import '../modules/wisata_utama_all/bindings/wisata_utama_all_binding.dart';
import '../modules/wisata_utama_all/views/wisata_utama_all_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_TOUR_PACKAGE,
      page: () => const DetailTourPackageView(),
      binding: DetailTourPackageBinding(),
    ),
    GetPage(
      name: _Paths.MAPS_SCREEN,
      page: () => const MapsScreenView(),
      binding: MapsScreenBinding(),
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
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_NEWS,
      page: () => const DetailNewsView(),
      binding: DetailNewsBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CODE_OTP,
      page: () => const CodeOtpView(),
      binding: CodeOtpBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () => const ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.PAKET_WISATA_ALL,
      page: () => const PaketWisataAllView(),
      binding: PaketWisataAllBinding(),
    ),
    GetPage(
      name: _Paths.WISATA_EVENT_ALL,
      page: () => const WisataEventAllView(),
      binding: WisataEventAllBinding(),
    ),
    GetPage(
      name: _Paths.WISATA_UTAMA_ALL,
      page: () => const WisataUtamaAllView(),
      binding: WisataUtamaAllBinding(),
    ),
    GetPage(
      name: _Paths.RESSET_PASSWORD,
      page: () => const RessetPasswordView(),
      binding: RessetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.DAFTAR_TIKET,
      page: () => DaftarTiketView(),
      binding: DaftarTiketBinding(),
    ),
    GetPage(
      name: _Paths.DATA_DIRI,
      page: () => const DataDiriView(),
      binding: DataDiriBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_GATEWAY,
      page: () => const PaymentGatewayView(),
      binding: PaymentGatewayBinding(),
    ),
    GetPage(
      name: _Paths.QRIS_PAYMENT,
      page: () => const QrisPaymentView(),
      binding: QrisPaymentBinding(),
    ),
    GetPage(
      name: _Paths.E_TICKET,
      page: () => const ETicketView(),
      binding: ETicketBinding(),
    ),
    GetPage(
      name: _Paths.FEATURE_SCREEN,
      page: () => const FeatureScreenView(),
      binding: FeatureScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOMESTAY_DETAILS,
      page: () => const HomestayDetailsView(),
      binding: HomestayDetailsBinding(),
    ),
    GetPage(
      name: _Paths.TOUR_GUIDE,
      page: () => const TourGuideView(),
      binding: TourGuideBinding(),
    ),
    GetPage(
      name: _Paths.TOUR_GUIDE_DETAILS,
      page: () => const TourGuideDetailsView(),
      binding: TourGuideDetailsBinding(),
    ),
    GetPage(
      name: _Paths.FOTOGRAFER_DETAILS,
      page: () => const FotograferDetailsView(),
      binding: FotograferDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
