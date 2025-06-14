import 'package:flutter/material.dart';

// Step 4: sperate the Home widget into its own file
// import 'screen/home.dart';
import 'package:learn_flutter_67_2/screen/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Home(),
      ),
    ),
  );
}
