import 'package:flutter/material.dart';

import 'Layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pranaya Anargya | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          primary: Colors.cyan[600]!,
          secondary: Colors.cyan[200]!,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.cyan[50],
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          titleMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          bodyMedium: TextStyle(fontSize: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            backgroundColor: Colors.cyan,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: const Layout(),
    );
  }
}
