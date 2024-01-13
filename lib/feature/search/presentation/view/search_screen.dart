import 'package:bookly_app/feature/search/presentation/view/widget/search_screen_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = 'SearchScreen';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchScreenBody(),
    );
  }
}
