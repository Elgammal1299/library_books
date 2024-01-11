import 'package:bookly_app/feature/home/presentation/view/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  static const String routeName = 'detailsscreen';

  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const BookDetailsViewBody(),
    );
  }
}
