import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:ecommerce_app/core/functions/alertexiteapp.dart';
import 'package:ecommerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign Up',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColors.grey)),
      ),
      body: WillPopScope(
        onWillPop: alertExiteApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(physics: const BouncingScrollPhysics(), children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "Welcome Back"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text:
                    "Sign Up With Your Email And Password OR Continue With Social Media"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: false,
              mycontroller: controller.username,
              valid: (value) {
                return null;
              },
              hinttext: "Enter Your Username",
              iconData: Icons.person_outline,
              labeltext: "Username",
            ),
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
            CustomTextFormAuth(
              isNumber: true,
              mycontroller: controller.phone,
              valid: (value) {
                return null;
              },
              hinttext: "Enter Your Phone",
              iconData: Icons.phone_android_outlined,
              labeltext: "Phone",
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              isNumber: false,
              mycontroller: controller.password,
              valid: (value) {
                return null;
              },
              hinttext: "Enter Your Password",
              iconData: Icons.lock_outline,
              labeltext: "Password",
              // mycontroller: ,
            ),
            CustomButtomAuth(
              text: "Sign Up",
              onPressed: () {
                controller.signUp();
                //print('error');
              },
            ),
            const SizedBox(height: 40),
            CustomTextSignUpOrSignIn(
              textone: " have an account ? ",
              texttwo: " SignIn ",
              onTap: () {
                controller.goToSignIn();
              },
            ),
          ]),
        ),
      ),
    );
  }
}
