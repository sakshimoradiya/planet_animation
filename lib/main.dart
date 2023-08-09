import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planet_animation/views/animatePage.dart';
import 'package:planet_animation/views/homepage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        'animatPage': (context) => AnimatPage(),
      },
    );
  }
}
