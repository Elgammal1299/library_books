import 'package:bookly_app/constants.dart';
import 'package:bookly_app/feature/home/presentation/view/home_screen.dart';
import 'package:bookly_app/feature/splash/presentation/view/widget/splash_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenBody(),
    );
  }

  void navigateToHome() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Get.to(() => const HomeScreen(),
          transition: Transition.fadeIn, duration: kTranstionDuration);
    });
  }
}
