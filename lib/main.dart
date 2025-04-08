import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_wallet_clone/controllers/theme_controller.dart';
import 'package:trust_wallet_clone/views/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trust Wallet Clone',
        themeMode: themeController.theme,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: MainScreen(),
      ),
    );
  }
}
