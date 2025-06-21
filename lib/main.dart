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
  runApp(const AddForm());
}
