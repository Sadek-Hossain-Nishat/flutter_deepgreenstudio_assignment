import 'package:flutter/material.dart';

class OnlineItem {
  late String amount, username, staus;
  late String idandtime;
  late Color color;
  OnlineItem(
      {required this.idandtime,
      required this.amount,
      required this.username,
      required this.staus,
      required this.color});
}
