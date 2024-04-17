import 'package:flutter/material.dart';
import 'package:sehety/features/welcome-page/presentation/view/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Welcome());
  }
}
