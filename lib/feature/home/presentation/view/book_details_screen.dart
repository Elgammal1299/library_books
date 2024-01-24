import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/home/data/model/book/item.model.dart';
import 'package:bookly_app/feature/home/data/repo/repo_home_impl.dart';
import 'package:bookly_app/feature/home/presentation/view/widget/book_details_view_body.dart';
import 'package:bookly_app/feature/home/presentation/view_model/smila_book/smililar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatelessWidget {
  static const String routeName = 'detailsscreen';
  const BookDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => SmililarBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),
        child: BookDetailsViewBody(items: arg),
      ),
    );
  }
}
