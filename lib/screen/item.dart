// Step 8: stateful widget
// Step 9: listview widget

import 'package:flutter/material.dart';

// Step 10: make a model for store data
import 'package:learn_flutter_67_2/models/person.dart';

// Step 12: use google fonts
import 'package:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  // int quantity = 10;

  // void addQuantity() {
  //   setState(() {
  //     quantity++;
  //   });
  // }

  // void subtractQuantity() {
  //   setState(() {
  //     quantity = quantity > 0 ? quantity - 1 : 0;
  //   });
  // }

  // Step 9: listview widget
  // List data = ["สมชาย", "สมหญิง", "สมศรี", "สมปอง", "สมจิตร"];

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text("Quantity: $quantity", style: TextStyle(fontSize: 24)),
    //       SizedBox(height: 20),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(onPressed: addQuantity, child: Text("Add")),
    //           SizedBox(width: 20),
    //           ElevatedButton(
    //             onPressed: subtractQuantity,
    //             child: Text("Subtract"),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );

    // Step 9: listview widget
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // color: Colors.orangeAccent,
            // Step 11: use a enum
            color: personList[index].job.color, // Use the color from the enum
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          // child: Text(
          //   data[index],
          //   style: TextStyle(
          //     fontSize: 24,
          //     color: Colors.white,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),

          // Step 10: make a model for store data
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    personList[index].name,
                    // style: TextStyle(
                    //   fontSize: 24,
                    //   color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                    // ),

                    // Step 12: use google fonts
                    style: GoogleFonts.kanit(
                      fontSize: 24,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Age: ${personList[index].age}",
                    // style: TextStyle(fontSize: 18, color: Colors.white70),
                    // Step 12: use google fonts
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Color(0xFFFFFFFF70),
                    ),
                  ),
                  Text(
                    // "Job: ${personList[index].job}",
                    // Step 11: use a enum
                    "Job: ${personList[index].job.title}", // Use the title from the enum
                    // style: TextStyle(fontSize: 18, color: Colors.white70),
                    // Step 12: use google fonts
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Color.fromARGB(221, 173, 86, 86),
                    ),
                  ),
                  // Step 11: use a enum
                  Image.asset(
                    personList[index].job.image,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: personList.length,
    );
  }
}
