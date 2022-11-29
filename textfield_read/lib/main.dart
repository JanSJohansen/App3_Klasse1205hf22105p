import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TextField Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Read TextField'),
            ),
            body: Column(
              children: [
            TextField(
            style: TextStyle(
            fontSize: 25,
            ),
            onChanged: (String value) {
              setState(() {
                this.message = value;
              }
              );
            }),

        Text(message,
            style: TextStyle(
              fontSize: 25,)
        ),
        ]
    )));
  }
}