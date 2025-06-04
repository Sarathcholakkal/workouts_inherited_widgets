import 'package:flutter/material.dart';

class CustomInheritedWidget extends InheritedWidget {
  final int counter;

  CustomInheritedWidget(
      {super.key, required super.child, required this.counter});

  static int of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CustomInheritedWidget>()!
        .counter;

    //to acces counter state , by calling context.depend method.context allows to look up inherit widger top tree to match ,if found access coutner state
  }

  @override
  bool updateShouldNotify(CustomInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  } // if state change it's return true other ways return false  there is  acces old data compare to new data
}
