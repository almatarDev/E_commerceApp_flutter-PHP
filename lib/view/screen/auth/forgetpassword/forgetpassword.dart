import 'package:ecommerce_app/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:ecommerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0.0,
        title: Text('Forget Password',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColors.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check Email"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            isNumber: false,
            mycontroller: controller.email,
            valid: (value) {
              return null;
            },
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustomButtomAuth(
              text: "Check",
              onPressed: () {
                controller.goToVerfiyCode();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
