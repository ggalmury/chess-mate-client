import 'package:chess_mate_client/properties/app_color.dart';
import 'package:chess_mate_client/widgets/screens/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: AppColor.appColor),
        scaffoldBackgroundColor: AppColor.appColor,
      ),
      home: const Index(),
    );
  }
}
