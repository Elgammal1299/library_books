import 'package:bookly_app/constants.dart';
import 'package:bookly_app/feature/home/presentation/view/book_details_screen.dart';
import 'package:bookly_app/feature/home/presentation/view/home_screen.dart';
import 'package:bookly_app/feature/search/presentation/view/search_screen.dart';
import 'package:bookly_app/feature/splash/presentation/view/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        BookDetailsScreen.routeName: (context) => const BookDetailsScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
