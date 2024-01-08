import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: CustomAppBar(),
                ),
                CustomBookListView(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle18,
                    // style: Theme.of(context)
                    //     .textTheme
                    //     .bodyLarge!
                    //     .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}





// class CustomBeatSellerItem extends StatelessWidget {
//   const CustomBeatSellerItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Image.asset(
//           AssetsData.itemImage,
//           width: 50,
//           height: 100,
//         ),
//         Column(
//           children: [
//             Text(
//               'Harry Potter\n and the Goblet of Fire ',
//               style: Theme.of(context)
//                   .textTheme
//                   .bodyLarge!
//                   .copyWith(fontWeight: FontWeight.bold),
//             ),
//             const Text('J.K. Rowling '),
//             const Row(
//               children: [
//                 Row(
//                   children: [
//                     Text('19.99'),
//                     Icon(Icons.swap_vertical_circle_rounded)
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.star),
//                     Text('4.8'),
//                     Text('(2390)'),
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
