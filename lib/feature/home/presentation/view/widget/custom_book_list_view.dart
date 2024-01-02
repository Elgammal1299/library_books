import 'package:bookly_app/feature/home/presentation/view/widget/custom_book_list_view_item.dart';
import 'package:flutter/material.dart';

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
