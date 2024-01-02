import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

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
