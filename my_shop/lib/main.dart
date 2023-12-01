import 'package:flutter/material.dart';

import './screens/product_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepPurple,
          secondary: Colors.deepOrange,
        ),
        useMaterial3: true,
        fontFamily: 'Lato',
      ),
      home: ProductOverviewScreen(),
    );
  }
}