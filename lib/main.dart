import 'package:activitat_1_3/styles/app_styles.dart';
import 'package:activitat_1_3/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Times',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: Theme.of(context).colorScheme.copyWith(
          //colorScheme: ColorScheme.fromSeed( //otra forma de hacer
          //seedColor: seedColor,
          primary: AppStyles.primaryColor,
          secondary: AppStyles.secondaryColor,
          tertiary: AppStyles.tertiaryColor,
          //background: Colors.white,
        ),
        textTheme: GoogleFonts.montserratTextTheme(),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: AppStyles.primaryColor,
        ),
      ),
      home: HomePage(),
    );
  }
}
