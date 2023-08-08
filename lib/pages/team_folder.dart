// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tutorial/components/header.dart';
import 'package:tutorial/components/projects.dart';
import 'package:tutorial/components/recently_updated.dart';
import 'package:tutorial/components/storage.dart';

class TeamFolder extends StatelessWidget {
  const TeamFolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Storage(),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          height: 25,
        ),
        Expanded(
            child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            RecentlyUpdated(),
            Divider(
              height: 60,
            ),
            Projects(
              
            )
          ],
        ))
      ],
    );
  }
}
