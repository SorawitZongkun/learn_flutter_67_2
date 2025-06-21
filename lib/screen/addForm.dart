// Step 13: TextFormField for input
// Step 14: DropdownButton for job selection

import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  // Step 15: form state management
  // Step 16: submit button
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.Doctor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            // Step 15: form state management
            // Step 16: submit button
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  // Step 15: form state management
                  // Step 16: submit button
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                  },
                  onSaved: (value) {
                    _name =
                        value!; // ! is used to assert that value is not null
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                  // Step 15: form state management
                  // Step 16: submit button
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  // Step 15: form state management
                  // Step 16: submit button
                  value: _job,
                  decoration: const InputDecoration(labelText: 'Job'),
                  items: Job.values.map((key) {
                    return DropdownMenuItem(value: key, child: Text(key.title));
                  }).toList(),
                  onChanged: (value) {
                    // print(value);
                    // Step 15: form state management
                    // Step 16: submit button
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    // Step 15: form state management
                    // Step 16: submit button
                    _formKey.currentState!.validate();
                    _formKey.currentState!.save();
                    personList.add(Person(name: _name, age: _age, job: _job));
                    print(personList.length);
                    _formKey.currentState!
                        .reset(); // Reset the form after submission
                  },
                  style: FilledButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
