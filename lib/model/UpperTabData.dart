import 'package:flutter/material.dart';
import 'package:flutter_deepgreenstudio_assignment/model/uppertabdatamodel.dart';

List<UpperTabDataModel> uppertablist = [
  UpperTabDataModel(
      title: "New Orders",
      subtitle: "Ordered Items",
      rating: 30,
      cardColor: Colors.blue,
      icon: Icon(
        Icons.add_box_outlined,
        color: Colors.blue,
      )),
  UpperTabDataModel(
      title: "Dispatched Orders",
      subtitle: "Parcel Send",
      rating: 15,
      cardColor: Colors.green,
      icon: Icon(
        Icons.badge_outlined,
        color: Colors.green,
      )),
  UpperTabDataModel(
      title: "Canceled Orders",
      subtitle: "Deleted Orders",
      rating: 3,
      cardColor: Colors.red,
      icon: Icon(
        Icons.close_outlined,
        color: Colors.red,
      ))
];
