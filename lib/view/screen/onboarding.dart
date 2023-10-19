import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:ecommerce_app/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_app/view/widget/onboarding/customslider.dart';
import 'package:ecommerce_app/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnBarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const CustomDotControllerOnBoarding(),
                  const Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: CustomButtonOnBoarding(
                      text: '18'.tr,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
