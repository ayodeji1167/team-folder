// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Storage extends StatelessWidget {
  const Storage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width - 50;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
                text: TextSpan(
                    text: "Storage ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    children: [
                  TextSpan(
                      text: "9.1/10GB",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 16)),
                ])),
            Text(
              "Upgrade",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            fileSizeChart("SOURCES", .3, Colors.blue, screenWidth),
            SizedBox(
              width: 2,
            ),
            fileSizeChart("DOCS", .2, Colors.red, screenWidth),
            SizedBox(
              width: 2,
            ),
            fileSizeChart("IMAGES", .23, Colors.yellow, screenWidth),
            SizedBox(
              width: 2,
            ),
            fileSizeChart("SOURCES", .25, Colors.grey, screenWidth),
          ],
        )
      ],
    );
  }

  Column fileSizeChart(
      String name, double widthPercentage, Color color, double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * widthPercentage,
          height: 4,
          color: color,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        )
      ],
    );
  }
}
