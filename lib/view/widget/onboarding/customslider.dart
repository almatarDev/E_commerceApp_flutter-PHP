import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) => controller.onPageChanged(value),
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(height: 30),
          Image.asset(
            onBoardingList[index].image,
            height: Get.width / 1.3,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            onBoardingList[index].title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: AppColors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[index].body,
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 2,
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
