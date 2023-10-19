import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:ecommerce_app/core/functions/alertexiteapp.dart';
import 'package:ecommerce_app/core/functions/validinput.dart';
import 'package:ecommerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0.0,
        title: Text(
          '2'.tr,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: AppColors.grey),
        ),
      ),
      body: WillPopScope(
        onWillPop: alertExiteApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              const SizedBox(height: 20),
              CustomTextTitleAuth(text: "3".tr),
              const SizedBox(height: 10),
              CustomTextBodyAuth(
                text: "4".tr,
              ),
              const SizedBox(height: 65),
              CustomTextFormAuth(
                isNumber: false,
                valid: (value) {
                  return validInput(value!, 5, 30, 'email');
                },
                hinttext: '6'.tr,
                iconData: Icons.email_outlined,
                labeltext: '5'.tr,
              ),
              GetBuilder<LoginControllerImp>(
                builder: (controller) => CustomTextFormAuth(
                  isNumber: false,
                  obscureText: controller.isShowPassword,
                  onTapIcon: () => controller.showPassword(),
                  valid: (value) {
                    return validInput(value!, 5, 30, 'password');
                  },
                  hinttext: '8'.tr,
                  iconData: Icons.lock_outline,
                  labeltext: '7'.tr,
                ),
              ),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: Text(
                  '9'.tr,
                  textAlign: TextAlign.end,
                  style: const TextStyle(color: Colors.blue),
                ),
              ),
              CustomButtomAuth(
                  text: '2'.tr,
                  onPressed: () {
                    controller.login();
                  }),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('10'.tr),
                  InkWell(
                    onTap: () {
                      controller.goToSignUp();
                    },
                    child: Text(
                      '11'.tr,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
