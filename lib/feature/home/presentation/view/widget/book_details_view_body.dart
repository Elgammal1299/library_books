import 'package:bookly_app/feature/home/presentation/view/widget/books_details_section.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SimilerBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
