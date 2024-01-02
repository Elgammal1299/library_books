import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            CustomBookListView(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Best Seller',
              style: Styles.titleMedium,
              // style: Theme.of(context)
              //     .textTheme
              //     .bodyLarge!
              //     .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
