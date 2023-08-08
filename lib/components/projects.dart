// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Projects ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text(
              "Create new",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        folderView('Chatbox'),
        folderView('TimeNote'),
        folderView('Something'),
        folderView('Documents'),
        folderView('Other'),
      ],
    );
  }
}

Container folderView(String folderName) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.symmetric(horizontal: 25),
    height: 65,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.shade200),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.folder,
              color: Colors.blue.shade200,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              folderName,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.grey,
            ))
      ],
    ),
  );
}
