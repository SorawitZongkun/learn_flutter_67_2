import 'package:flutter/material.dart';

// Step 4: sperate the Home widget into its own file
// import 'screen/home.dart';
import 'package:learn_flutter_67_2/screen/home.dart';
import 'package:learn_flutter_67_2/screen/item.dart';

// Step 13: TextFormField for input
// Step 14: DropdownButton for job selection
import 'package:learn_flutter_67_2/screen/addForm.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     title: "My Title",
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text("My App"),
  //         backgroundColor: Colors.pinkAccent,
  //         centerTitle: true,
  //       ),
  //       // body: Home(),

  //       // Step 8: stateful widget
  //       body: Item(),
  //     ),
  //   ),
  // );

  // Step 13: TextFormField for input
  // Step 14: DropdownButton for job selection
  // runApp(const AddForm());

  // Step 17: Routing
  runApp(const MyApp());
}

// Step 17: Routing
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}
