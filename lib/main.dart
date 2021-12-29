import 'package:ass_todo_app/personal_view.dart';
import 'package:flutter/material.dart';
import 'package:ass_todo_app/tasks_view.dart';
import 'package:ass_todo_app/home_view.dart';
import 'package:ass_todo_app/business_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey, ),
        // primarySwatch: white,
        )
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const HomeView(),
    );
  }
}

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
} );
