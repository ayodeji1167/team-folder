// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      border: Border.all(
          style: BorderStyle.solid,
          width: 1,
          color: Color.fromARGB(255, 11, 33, 227)),
      borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.lock,
        size: 30,
        color: Color.fromARGB(255, 11, 33, 227),
      ),
      SizedBox(
        width: 20,
      ),
      Text(
        "Sign up",
        style: TextStyle(
            fontSize: 20, color: Color.fromARGB(255, 11, 33, 227)),
      ),
    ],
      ),
    );
  }
}
