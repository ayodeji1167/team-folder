// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tutorial/components/my_container.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
      vertical: 20),
      
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.red,
            child: MyContainer(),
          ),
          MyContainer(),
          MyContainer(),
          MyContainer(),
          MyContainer(),
          MyContainer(),
          MyContainer(),
          MyContainer(),
          MyContainer(),
        ],
      ),
    );
  }
}

// class MyButton extends StatelessWidget {
//   const MyButton({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return MyContainer();
//   }
// }
