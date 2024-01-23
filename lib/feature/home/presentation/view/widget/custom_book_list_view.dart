import 'package:bookly_app/core/widget/custom_erroe_widget.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_book_image.dart';
import 'package:bookly_app/feature/home/presentation/view_model/featured_book_cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBookListView extends StatelessWidget {
  const CustomBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
        builder: (context, state) {
      if (state is FeaturedBookSuccesss) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.booksModel.items?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CustomBookImage(
                      imageUrl: state.booksModel.items?[index].volumeInfo!
                              .imageLinks?.thumbnail ??
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvEw427TqzDpZ5rph6PwwhxmazsLAiI0mzhA&usqp=CAU'),
                );
              }),
        );
      } else if (state is FeaturedBookFailuer) {
        return CustomErrorWidget(
          errMessage: state.errMess,
        );
      } else {
        return const CircularProgressIndicator();
      }
    });
  }
}
