import 'package:get/get.dart';
import 'package:health_app/features/authentication/screens/forgot_password/forgot_password_screen.dart';
import 'package:health_app/features/authentication/screens/login/login_screen.dart';
import 'package:health_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:health_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:health_app/features/shop/screens/appointment/appointment_screen.dart';
import 'package:health_app/features/shop/screens/home/home_screen.dart';
import 'package:health_app/nav_menu.dart';
import 'package:health_app/utils/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.onboardingScreen,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Routes.signupScreen,
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.bottomNavMenu,
      page: () => const BottomNavMenu(),
    ),
    GetPage(
      name: Routes.appointmentScreen,
      page: () => const AppointmentScreen(),
    ),
  ];
}