import 'package:ecommerce_app/core/constants/routesname.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifycode;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successsignup);
  }
}
