import 'package:bookly_app/feature/home/presentation/view/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
