import 'package:flutter/material.dart';
import 'package:weather_app_test/screens/home%20screen/homescreen.dart';

import 'screens/screen 2/screen2.dart';
import 'screens/screen 3/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          cardTheme: const CardTheme(color: Colors.white, elevation: 1),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              scrolledUnderElevation: 0,
              iconTheme: IconThemeData(color: Colors.black)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomeScreen(),
          '/screen2': (context) => Screen2(),
          '/screen3': (context) => Screen3(),
        });
  }
}
