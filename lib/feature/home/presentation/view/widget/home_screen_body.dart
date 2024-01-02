import 'package:bookly_app/core/utils/assets.dart';
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
          CustomBookListView(),
        ],
      ),
    );
  }
}

class CustomBookListViewItem extends StatelessWidget {
  const CustomBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: MediaQuery.of(context).size.height * .25,
      width: MediaQuery.of(context).size.height * .17,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(AssetsData.itemImage), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
    );
  }
}

class CustomBookListView extends StatelessWidget {
  const CustomBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const SizedBox(height: 200, child: CustomBookListViewItem());
          }),
    );
  }
}
