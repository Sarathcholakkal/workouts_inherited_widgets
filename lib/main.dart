import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/custom_inherited_widget.dart';
import 'package:flutter_inherited_widget/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CustomInheritedWidget(
      counter: 50,
      child: MaterialApp(
        home: MainPage(title: 'couter'),
      ),
    );
  }
}
