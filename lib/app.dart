import 'package:flutter/material.dart';

import '13_curd_App_190825/home.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.red),
          bodyMedium: TextStyle(color: Colors.green),
          bodySmall: TextStyle(color: Colors.blue),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white
          )

        )

      ),
      home: Home(),
    );
  }
}
