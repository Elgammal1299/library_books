import 'package:bookly_app/core/widget/custom_erroe_widget.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/custom_book_image.dart';
import 'package:bookly_app/feature/home/presentation/view_model/featured_book_cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
        builder: (context, state) {
      if (state is FeaturedBookSuccesss) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: CustomBookImage(),
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
