import 'package:bookly_app/feature/home/data/model/book/item.model.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/books_details_section.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/similer_books_section.dart';
import 'package:bookly_app/feature/home/presentation/view_model/smila_book/smililar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatefulWidget {
  final Item items;
  const BookDetailsViewBody({super.key, required this.items});

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  void initState() {
    BlocProvider.of<SmililarBooksCubit>(context)
        .fetchSmililarBooks(category: widget.items.volumeInfo!.categories![0]);
    super.initState();
  }

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
