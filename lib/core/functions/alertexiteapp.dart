import 'dart:io';
import 'package:ecommerce_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExiteApp() {
  Get.defaultDialog(
    title: 'تنبيه',
    titleStyle:
        const TextStyle(fontWeight: FontWeight.bold, color: AppColors.black),
    middleText: 'هل تريد الخروج من التطبيق',
    middleTextStyle: const TextStyle(color: AppColors.grey),
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: const Text('OK'),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: const Text('Cancel'),
      ),
    ],
  );
  return Future.value(true);
}
