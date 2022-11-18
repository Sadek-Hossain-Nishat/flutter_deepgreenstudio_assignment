import 'package:flutter/material.dart';
import 'package:flutter_deepgreenstudio_assignment/model/topitemmodel.dart';

class OnlineOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 545,
      height: 250,
      child: ListView(
        padding: EdgeInsets.only(left: 10),
        children: [
          Text('Online Orders',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black)),
          SizedBox(
            height: 20,
          ),
          TopItemRow()
        ],
      ),
    );
  }
}

List<TopItemModel> topItemdata = [
  TopItemModel(
      name: 'Pasta',
      order: '300',
      price: '#12.5',
      soldprice: '#3,750',
      icon: Icon(
        Icons.arrow_upward,
        color: Colors.green,
      )),
  TopItemModel(
      name: 'Chicken Masala',
      order: '269',
      price: '#11',
      soldprice: '#2,959',
      icon: Icon(
        Icons.arrow_downward,
        color: Colors.red,
      )),
  TopItemModel(
      name: 'Chowmin',
      order: '250',
      price: '#11.5',
      soldprice: '#2,875',
      icon: Icon(
        Icons.arrow_upward,
        color: Colors.green,
      )),
  TopItemModel(
      name: 'Chicken Roast',
      order: '222',
      price: '#13',
      soldprice: '#2,886',
      icon: Icon(Icons.arrow_downward, color: Colors.red)),
  TopItemModel(
      name: 'Chicken Tikka',
      order: '189',
      price: '#10',
      soldprice: '#1,890',
      icon: Icon(null)),
];

// TextStyle topitemtextStyle =
//     TextStyle(fontSize: 20, fontWeight: FontWeight.w700);

List<DataCell> cells1 = [
  DataCell(Text('Pasta')),
  DataCell(
    Text('300'),
  ),
  DataCell(Text('#12.5')),
  DataCell(Text('#3,750')),
  DataCell(Text(
    'New Order',
    style: TextStyle(color: Colors.blue),
  ))
];

List<DataCell> cells2 = [
  DataCell(Text('Chicken')),
  DataCell(Text('269')),
  DataCell(Text('#11')),
  DataCell(Text('#2,959')),
  DataCell(Text(
    'Pending',
    style: TextStyle(color: Colors.red),
  ))
];

List<DataCell> cells3 = [
  DataCell(Text('Chicken Roast')),
  DataCell(Text('211')),
  DataCell(Text('#13.5')),
  DataCell(Text('#3,050')),
  DataCell(Text(
    'Pending',
    style: TextStyle(color: Colors.red),
  ))
];

List<DataCell> cells4 = [
  DataCell(Text('Pasta')),
  DataCell(Text('300')),
  DataCell(Text('#12.5')),
  DataCell(Text('#3,750')),
  DataCell(Text(
    'Delivered',
    style: TextStyle(color: Colors.green),
  ))
];

List<DataCell> cells5 = [
  DataCell(Text('Pasta')),
  DataCell(Text('300')),
  DataCell(Text('#12.5')),
  DataCell(Text('#3,750')),
  DataCell(Icon(null))
];

List<DataRow> topitemrows = [
  DataRow(cells: cells1),
  DataRow(cells: cells2),
  DataRow(cells: cells3),
  DataRow(cells: cells4),
  DataRow(cells: cells5)
];

Widget TopItemRow() {
  return DataTable(columns: [
    DataColumn(
      label: Text(
        'ID&time',
      ),
    ),
    DataColumn(
      label: Text('Amount'),
    ),
    DataColumn(
      label: Text('Username'),
    ),
    DataColumn(
      label: Text('Status'),
    ),
    DataColumn(
      label: Text(''),
    ),
  ], rows: topitemrows);
}
