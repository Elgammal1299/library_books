// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/view/book_details_screen.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, BookDetailsScreen.routeName);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            const CustomBookImage(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvEw427TqzDpZ5rph6PwwhxmazsLAiI0mzhA&usqp=CAU'),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtsectrafine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      // const Spacer(),
                      const BookRating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
