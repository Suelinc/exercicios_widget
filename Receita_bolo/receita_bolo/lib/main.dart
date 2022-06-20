import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        
        Image.network('https://img.itdg.com.br/tdg/images/recipes/000/003/468/359047/359047_original.jpg?mode=crop&width=710&height=400'),
        Row(
          children: [
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
          const SizedBox(width: 30.0),
          Container(
            color: Colors.red,
            width: 100.0,
            height: 100.0,
          ),
          const SizedBox(width: 30.0),
          Container(
            color: Colors.yellow,
            width: 100.0,
            height: 100.0,
          ),
        ]

        ),

      ],)
    );
  }}