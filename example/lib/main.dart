import 'package:example/common/presentation/app_theme.dart';
import 'package:example/example_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ExampleWidget(),
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
