import 'package:flutter/material.dart';
import 'package:pomo/features/auth/get_started_screen.dart';

import 'common/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Urbanist",
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: ThemeApp.gray900,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: ThemeApp.primary900),
        useMaterial3: false,
      ),
      home: const GetStartedScreen(),
    );
  }
}
