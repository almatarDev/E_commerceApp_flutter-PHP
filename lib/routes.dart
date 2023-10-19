import 'package:ecommerce_app/view/screen/auth/forgetpassword/verifycode_signup.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:get/get.dart';
import 'core/constants/routesname.dart';
import 'core/middleware/mymiddleware.dart';
import 'view/screen/auth/forgetpassword/forgetpassword.dart';
import 'view/screen/auth/forgetpassword/resetpassword.dart';
import 'view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'view/screen/auth/forgetpassword/verifycode.dart';
import 'view/screen/auth/loginscreen.dart';
import 'view/screen/auth/signup.dart';
import 'view/screen/auth/success_signup.dart';
import 'view/screen/onboarding.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoutes.successresetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoutes.successsignup, page: () => const SuccessSignUp()),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoutes.verifycodesignup, page: () => const VerifyCodeSignUp()),
];
