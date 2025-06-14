import 'package:flutter/material.dart';

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

// Step 3: container widget
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(color: Colors.blueAccent, width: 300, height: 300);
    // return Container(color: Colors.blueAccent, margin: EdgeInsets.all(10));
    // return Container(
    //   color: Colors.blueAccent,
    //   margin: EdgeInsets.fromLTRB(5, 10, 15, 20),
    // );
    return Center(
      child: Container(
        color: Colors.blueAccent,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        padding: EdgeInsets.all(20),
        child: Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 30, letterSpacing: 3),
        ),
      ),
    );
  }
}
