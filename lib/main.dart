import 'package:flutter/material.dart';
import 'widget_kompleks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Kompleks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetKompleks(),
      debugShowCheckedModeBanner: false,
    );
  }
}
