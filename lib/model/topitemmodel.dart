import 'package:flutter/material.dart';

class TopItemModel {
  late String name, order, price, soldprice;
  late Icon icon;
  TopItemModel(
      {required this.name,
      required this.order,
      required this.price,
      required this.soldprice,
      required this.icon});
}
