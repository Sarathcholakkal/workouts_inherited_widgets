import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/custom_inherited_widget.dart';

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title, // Use `required` keyword instead of `@required`
    Key? key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final counter = CustomInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(fontSize: 100),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

    //  ButtonWidget(
    //           text: 'Change Counter',
    //           onClicked: () => Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) => const CounterPage()),
    //           ),
    //         ),


  //           const SizedBox(height: 47),
  //           ButtonWidget(
  //             text: 'Change Color',
  //             onClicked: () => Navigator.push(
  //               context,
  //               MaterialPageRoute(builder: (context) => const ColorPage()),
  //             ),
  //           ),