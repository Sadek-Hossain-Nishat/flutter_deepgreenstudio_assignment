import 'package:flutter/material.dart';

class OrderHistoryItem {
  late String id, time, customername, location, amount, statusorder, action;
  late Icon statusicon;
  late Color color;

  OrderHistoryItem(
      {required this.id,
      required this.time,
      required this.customername,
      required this.location,
      required this.amount,
      required this.statusorder,
      required this.action,
      required this.statusicon,
      required this.color});
}
