import 'package:flutter/material.dart';

class StateWidget extends StatefulWidget {
  final Widget child;
  const StateWidget({required this.child, super.key});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  int counter = 0;
  void increamentCounter() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomInheritedWidget(
      child: widget.child,
      counter: counter,
      stateWidget: this,
    );
  }
}

class CustomInheritedWidget extends InheritedWidget {
  final int counter;
  final _StateWidgetState stateWidget;

  CustomInheritedWidget(
      {super.key,
      required super.child,
      required this.counter,
      required this.stateWidget});

  static _StateWidgetState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CustomInheritedWidget>()!
        .stateWidget;

    //to acces counter state , by calling context.depend method.context allows to look up inherit widger top tree to match ,if found access coutner state
  }

  @override
  bool updateShouldNotify(CustomInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  } // if state change it's return true other ways return false  there is  acces old data compare to new data
}
