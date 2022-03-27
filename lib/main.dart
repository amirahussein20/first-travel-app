import 'package:flutter/material.dart';
import 'package:travel_app/screens/categories_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'travel app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: 'IBMPlexSansArabin',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontFamily: 'IBMPlexSansArabin',
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
     home: categoriesScreen(),
    );
  }
}

