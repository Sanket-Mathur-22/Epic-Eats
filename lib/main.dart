import 'package:flutter/material.dart';
import 'package:food_app/screens/onboarding_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return VxApp(
        store: Mystore(),
        builder: (context, vxData) => GetMaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                brightness:
                    vxData.isDarkMode ? Brightness.dark : Brightness.light,
                useMaterial3: true,
              ),
              home: const onBoardingScreen(),
            ));
  }
}

class Mystore extends VxStore {}
