import 'package:bookly_app/feature/home/presentation/view/home_screen.dart';
import 'package:bookly_app/feature/splash/presentation/view/widget/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'Splash screen';
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
      body: Center(child: SplashScreenBody()),
    );
  }

  void navigateToHome() {
    Future.delayed(
        const Duration(
          seconds: 4,
        ), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
}
