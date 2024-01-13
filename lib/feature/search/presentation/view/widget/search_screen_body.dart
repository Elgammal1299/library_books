import 'package:bookly_app/feature/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
        child: Column(
          children: [
            CustomSearchTextField(),
          ],
        ),
      ),
    );
  }
}
