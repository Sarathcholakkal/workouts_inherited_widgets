import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/custom_inherited_widget.dart';
// Ensure this file exists
import 'button_widget.dart'; // Ensure this file exists

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose(); // Always dispose your controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void incrementCounter() {
      final provider = CustomInheritedWidget.of(context);
      provider.increamentCounter();
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 24),
            ButtonWidget(
              text: 'Increment Counter',
              onClicked: incrementCounter,
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}















//   Widget buildTextField({
//     required ValueChanged<String> onSubmitted,
//   }) =>
//       TextField(
//         controller: controller,
//         style: const TextStyle(color: Colors.white),
//         cursorColor: Colors.white,
//         keyboardType: TextInputType.number,
//         onSubmitted: onSubmitted,
//         decoration: InputDecoration(
//           hintText: 'Counter',
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: const BorderSide(color: Colors.white),
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: const BorderSide(color: Colors.white),
//           ),
//           hintStyle: const TextStyle(color: Colors.white70),
//         ),
//       );

 
// }
//  Container(
//               margin: const EdgeInsets.symmetric(horizontal: 48),
//               child: buildTextField(onSubmitted: setCounter),
//             )




  // void setCounter(String value) {
  //   final counter = int.tryParse(value);
  //   if (counter != null) {
  //     final provider = StateInheritedWidget.of(context);
  //     provider.setCounter(counter);
  //     Navigator.pop(context);
  //   } else {
  //     // Optional: Show error message or validation
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text("Please enter a valid number")),
  //     );
  //   }
  // }



    




          //  ButtonWidget(
          //     text: 'Update Counter',
          //     onClicked: () => setCounter(controller.text),
          //   ),
          //}