import 'package:bookly_app/feature/presentation/view/home_screen.dart';
import 'package:bookly_app/feature/presentation/view/widget/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashDuration();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenBody(),
    );
  }

  void splashDuration() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
}
