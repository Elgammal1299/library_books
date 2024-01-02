import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: Column(
        children: [
          Image.asset(AssetsData.splashLogo),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(
                'Bookly',
                textStyle:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              // WavyAnimatedText('Look at the waves'),
            ],
            isRepeatingAnimation: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
