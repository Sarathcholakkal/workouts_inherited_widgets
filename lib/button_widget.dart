import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
    Key? key, // optional key support
  }) : super(key: key); // missing semicolon and calling superclass constructor

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClicked,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
