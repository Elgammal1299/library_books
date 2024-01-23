import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/books_action.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .25),
          child: const CustomBookImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvEw427TqzDpZ5rph6PwwhxmazsLAiI0mzhA&usqp=CAU'),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
