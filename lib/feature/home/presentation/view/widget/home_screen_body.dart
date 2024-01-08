import 'package:bookly_app/core/utils/assets.dart';
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
              style: Styles.textStyle18,
              // style: Theme.of(context)
              //     .textTheme
              //     .bodyLarge!
              //     .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            CustomBeatSellerItem(),
          ],
        ),
      ),
    );
  }
}

class CustomBeatSellerItem extends StatelessWidget {
  const CustomBeatSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.itemImage,
          width: 50,
          height: 100,
        ),
        Column(
          children: [
            Text(
              'Harry Potter\n and the Goblet of Fire ',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Text('J.K. Rowling '),
            const Row(
              children: [
                Row(
                  children: [
                    Text('19.99'),
                    Icon(Icons.swap_vertical_circle_rounded)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star),
                    Text('4.8'),
                    Text('(2390)'),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class BestSellerListViewItme extends StatelessWidget {
  const BestSellerListViewItme({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.itemImage,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
