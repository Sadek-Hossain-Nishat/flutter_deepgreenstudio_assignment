import 'package:flutter/material.dart';

class UpperTabDataModel {
  late String title, subtitle;
  late int rating;
  late Color cardColor;
  late Icon icon;
  UpperTabDataModel(
      {required this.title,
      required this.subtitle,
      required this.rating,
      required this.cardColor,
      required this.icon});
}
