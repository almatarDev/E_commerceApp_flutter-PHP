import 'package:ecommerce_app/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:ecommerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColors.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "New Password"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(text: "Please Enter new Password"),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            isNumber: false,
            valid: (value) {
              return null;
            },
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustomTextFormAuth(
            isNumber: false,
            valid: (value) {
              return null;
            },
            mycontroller: controller.password,
            hinttext: "Re Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
          ),
          CustomButtomAuth(
              text: "save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
