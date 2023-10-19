import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  String text;
  CustomButtonOnBoarding({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 45.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: AppColors.primaryColor,
      ),
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
/*import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background =AppColors.primaryColor,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 45.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
*/