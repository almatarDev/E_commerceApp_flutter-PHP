import 'package:ecommerce_app/core/constants/apptheme.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;
  changeLang(String langeCode) {
    Locale locale = Locale(langeCode);
    myServices.sharedPreferences.setString("lange", langeCode);
    appTheme = langeCode == 'ar' ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lange");
    if (sharedPrefLang == 'ar') {
      language = const Locale('ar');
      appTheme = themeArabic;
    } else if (sharedPrefLang == 'en') {
      language = const Locale('en');
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
