import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sehety/core/util/colors.dart';
import 'package:sehety/features/intro/presentation/view/splash_view.dart';
import 'package:sehety/features/intro/presentation/view/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          foregroundColor: AppColors.primaryColor
        ),
          fontFamily: GoogleFonts.cairo().fontFamily,
          inputDecorationTheme: InputDecorationTheme(
              fillColor: AppColors.cardColor,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.cardColor),
                borderRadius: BorderRadius.circular(25),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redColor),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redColor),
                borderRadius: BorderRadius.circular(25),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.cardColor),
                borderRadius: BorderRadius.circular(25),
              ))),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
