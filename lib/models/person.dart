// Step 10: make a model for store data

// class Person {
//   String name;
//   int age;
//   String job;

//   // Constructor
//   Person({required this.name, required this.age, required this.job});
// }

// List<Person> personList = [
//   Person(name: "สมชาย", age: 30, job: "Engineer"),
//   Person(name: "สมหญิง", age: 28, job: "Doctor"),
//   Person(name: "สมศรี", age: 25, job: "Teacher"),
//   Person(name: "สมปอง", age: 35, job: "Artist"),
//   Person(name: "สมจิตร", age: 40, job: "Chef"),
// ];

// Step 11: use a enum

import 'package:flutter/material.dart';

enum Job {
  Engineer(
    title: "Engineer",
    image: "assets/images/flower.jpg",
    color: Colors.blue,
  ),
  Doctor(title: "Doctor", image: "assets/images/flower.jpg", color: Colors.red),
  Teacher(
    title: "Teacher",
    image: "assets/images/flower.jpg",
    color: Colors.green,
  ),
  Artist(
    title: "Artist",
    image: "assets/images/flower.jpg",
    color: Colors.purple,
  ),
  Chef(title: "Chef", image: "assets/images/flower.jpg", color: Colors.yellow);

  final String title;
  final String image;
  final Color color;
  // Constructor
  const Job({required this.title, required this.image, required this.color});
}

class Person {
  String name;
  int age;
  Job job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> personList = [
  Person(name: "สมชาย", age: 30, job: Job.Engineer),
  Person(name: "สมหญิง", age: 28, job: Job.Doctor),
  Person(name: "สมศรี", age: 25, job: Job.Teacher),
  Person(name: "สมปอง", age: 35, job: Job.Artist),
  Person(name: "สมจิตร", age: 40, job: Job.Chef),
];
