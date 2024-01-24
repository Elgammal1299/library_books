import 'package:bookly_app/core/widget/custom_erroe_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_indicator.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/book_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/view_model/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.booksModel.items?.length ?? 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                      itemModel: state.booksModel.items![index]),
                );
              });
        } else if (state is NewsetBooksFailuer) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
