import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vehicules/views/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Navigation Bar',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen() // Utilisez Get.offAll pour naviguer
        );
  }
}
