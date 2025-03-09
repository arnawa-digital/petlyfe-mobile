import 'package:get/get.dart';

import '../modules/auth/forgot_password/forgot_password_email/bindings/forgot_password_email_binding.dart';
import '../modules/auth/forgot_password/forgot_password_email/views/forgot_password_email_view.dart';
import '../modules/auth/forgot_password/forgot_password_otp/bindings/forgot_password_otp_binding.dart';
import '../modules/auth/forgot_password/forgot_password_otp/views/forgot_password_otp_view.dart';
import '../modules/auth/forgot_password/new_password/bindings/new_password_binding.dart';
import '../modules/auth/forgot_password/new_password/views/new_password_view.dart';
import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/register/bindings/register_binding.dart';
import '../modules/auth/register/views/register_view.dart';
import '../modules/care/adoption/adoption_detail/bindings/adoption_detail_binding.dart';
import '../modules/care/adoption/adoption_detail/views/adoption_detail_view.dart';
import '../modules/care/adoption/adoption_history/bindings/adoption_history_binding.dart';
import '../modules/care/adoption/adoption_history/progress_adoption/bindings/progress_adoption_binding.dart';
import '../modules/care/adoption/adoption_history/progress_adoption/views/progress_adoption_view.dart';
import '../modules/care/adoption/adoption_history/views/adoption_history_view.dart';
import '../modules/care/adoption/bindings/adoption_binding.dart';
import '../modules/care/adoption/views/adoption_view.dart';
import '../modules/care/donation/bindings/donation_binding.dart';
import '../modules/care/donation/views/donation_view.dart';
import '../modules/care/views/care_view.dart';
import '../modules/care/adoption/create_adoption/bindings/create_adoption_binding.dart';
import '../modules/care/adoption/create_adoption/views/create_adoption_view.dart';
import '../modules/dashboard/doctor_clinic/bindings/doctor_clinic_binding.dart';
import '../modules/dashboard/doctor_clinic/views/doctor_clinic_view.dart';
import '../modules/dashboard/news_insights/bindings/news_insights_binding.dart';
import '../modules/dashboard/news_insights/views/news_insights_view.dart';
import '../modules/dashboard/online_store/bindings/online_store_binding.dart';
import '../modules/dashboard/online_store/views/online_store_view.dart';
import '../modules/dashboard/shelter/bindings/shelter_binding.dart';
import '../modules/dashboard/shelter/views/shelter_view.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/pet_profile/views/pet_profile_view.dart';
import '../modules/user_profile/views/user_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USER_PROFILE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_EMAIL,
      page: () => const ForgotPasswordEmailView(),
      binding: ForgotPasswordEmailBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_OTP,
      page: () => const ForgotPasswordOtpView(),
      binding: ForgotPasswordOtpBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => const NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => const UserProfileView(),
    ),
    GetPage(
      name: _Paths.PET_PROFILE,
      page: () => const PetProfileView(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.CARE,
      page: () => const CareView(),
    ),
    GetPage(
      name: _Paths.DONATION,
      page: () => const DonationView(),
      binding: DonationBinding(),
    ),
    GetPage(
      name: _Paths.ADOPTION,
      page: () => const AdoptionView(),
      binding: AdoptionBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
    ),
    GetPage(
      name: _Paths.DOCTOR_CLINIC,
      page: () => const DoctorClinicView(),
      binding: DoctorClinicBinding(),
    ),
    GetPage(
      name: _Paths.NEWS_INSIGHTS,
      page: () => const NewsInsightsView(),
      binding: NewsInsightsBinding(),
    ),
    GetPage(
      name: _Paths.SHELTER,
      page: () => const ShelterView(),
      binding: ShelterBinding(),
    ),
    GetPage(
      name: _Paths.ONLINE_STORE,
      page: () => const OnlineStoreView(),
      binding: OnlineStoreBinding(),
    ),
    GetPage(
      name: _Paths.ADOPTION_DETAIL,
      page: () => const AdoptionDetailView(),
      binding: AdoptionDetailBinding(),
    ),
    GetPage(
      name: _Paths.ADOPTION_HISTORY,
      page: () => const AdoptionHistoryView(),
      binding: AdoptionHistoryBinding(),
    ),
    GetPage(
      name: _Paths.PROGRESS_ADOPTION,
      page: () => const ProgressAdoptionView(),
      binding: ProgressAdoptionBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ADOPTION,
      page: () => const CreateAdoptionView(),
      binding: CreateAdoptionBinding(),
    ),
  ];
}
