// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class RecentlyUpdated extends StatelessWidget {
  const RecentlyUpdated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recently updated",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildFileColumn(
                name: 'desktop', extension: 'sketch', image: 'sketch'),
            buildFileColumn(
                name: 'mobile', extension: 'sketch', image: 'sketch'),
            buildFileColumn(
                name: 'interaction', extension: 'sketch', image: 'prd'),
          ],
        )
      ],
    );
  }

  Column buildFileColumn(
      {required String image,
      required String name,
      required String extension}) {
    return Column(
      children: [
        Container(
            height: 110,
            padding: EdgeInsets.all(35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade200,
            ),
            child: Image.asset(
              'lib/assets/images/$image.png',
              width: 40,
            )),
        SizedBox(
          height: 15,
        ),
        RichText(
            text: TextSpan(
                text: name,
                style: TextStyle(color: Colors.black, fontSize: 14),
                children: [
              TextSpan(
                  text: '.$extension',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 12))
            ]))
      ],
    );
  }
}
