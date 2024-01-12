import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Con also like',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
