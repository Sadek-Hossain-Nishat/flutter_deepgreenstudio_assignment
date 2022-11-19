import 'package:flutter/material.dart';

Widget CustomButton() {
  return Container(
    padding: EdgeInsets.only(left: 25, top: 15, bottom: 15),
    width: 120,
    height: 50,
    decoration: BoxDecoration(
        color: Colors.orangeAccent, borderRadius: BorderRadius.circular(20)),
    child: Row(
      children: [
        Text(
          'View All',
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.arrow_forward,
          color: Colors.white,
        )
      ],
    ),
  );
}
