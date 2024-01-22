import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/home/data/repo/repo_home_impl.dart';
import 'package:bookly_app/feature/home/presentation/view/book_details_screen.dart';
import 'package:bookly_app/feature/home/presentation/view/home_screen.dart';
import 'package:bookly_app/feature/home/presentation/view_model/featured_book/featured_book_cubit.dart';
import 'package:bookly_app/feature/search/presentation/view/search_screen.dart';
import 'package:bookly_app/feature/splash/presentation/view/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServieceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBookCubit>(
          create: (BuildContext context) => FeaturedBookCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp(
        initialRoute: SplashScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          SplashScreen.routeName: (context) => const SplashScreen(),
          BookDetailsScreen.routeName: (context) => const BookDetailsScreen(),
          SearchScreen.routeName: (context) => const SearchScreen(),
        },
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
/*
BlocProvider(
          create: (context) => FeaturedBookCubit(
          getIt.get<HomeRepoImpl>(),
          ),
        ),
 */