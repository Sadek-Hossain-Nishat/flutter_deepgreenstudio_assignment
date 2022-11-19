import 'package:flutter/material.dart';
import 'package:flutter_deepgreenstudio_assignment/model/OrderHistoryItem.dart';

class OrderHistoryItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: TopItemRow());
  }
}

List<OrderHistoryItem> historydata = [
  OrderHistoryItem(
      id: '#A0223',
      time: '12:20 AM | 22/07/2022 ',
      customername: 'Amirul Islam',
      location: 'Sylet',
      amount: '#3,700',
      statusorder: 'New Order',
      action: '. . .',
      statusicon: Icon(
        Icons.add_box_outlined,
        color: Colors.blue,
      ),
      color: Colors.blue),
  OrderHistoryItem(
      id: '#A0222',
      time: '12:20 AM | 22/07/2022 ',
      customername: 'Apon Islam',
      location: 'Dhaka',
      amount: '#2,700',
      statusorder: 'Dispatched Orders',
      action: '. . .',
      statusicon: Icon(
        Icons.done_all_outlined,
        color: Colors.green,
      ),
      color: Colors.green),
  OrderHistoryItem(
      id: '#A0223',
      time: '12:20 AM | 22/07/2022 ',
      customername: 'Zawad Ahmed',
      location: 'Maymensingh',
      amount: '#6,700',
      statusorder: 'Pending',
      action: '. . .',
      statusicon: Icon(
        Icons.lock_clock,
        color: Colors.red,
      ),
      color: Colors.red),
  OrderHistoryItem(
      id: '#A0223',
      time: '12:20 AM | 22/07/2022 ',
      customername: 'Amirul Islam',
      location: 'Sylet',
      amount: '#3,700',
      statusorder: 'New Order',
      action: '. . .',
      statusicon: Icon(
        Icons.add_box_outlined,
        color: Colors.blue,
      ),
      color: Colors.blue),
  OrderHistoryItem(
      id: '#A0222',
      time: '12:20 AM | 22/07/2022 ',
      customername: 'Apon Islam',
      location: 'Dhaka',
      amount: '#2,700',
      statusorder: 'Dispatched Orders',
      action: '. . .',
      statusicon: Icon(
        Icons.done_all_outlined,
        color: Colors.green,
      ),
      color: Colors.green),
  OrderHistoryItem(
      id: '#A0223',
      time: '12:20 AM | 22/07/2022 ',
      customername: 'Zawad Ahmed',
      location: 'Maymensingh',
      amount: '#6,700',
      statusorder: 'Pending',
      action: '. . .',
      statusicon: Icon(
        Icons.lock_clock,
        color: Colors.red,
      ),
      color: Colors.red),
];

List<DataRow> getRows() => historydata.asMap().entries.map((entry) {
      final history = entry.value;
      final index = entry.key;
      final cells = [
        history.id,
        history.time,
        history.customername,
        history.location,
        history.amount,
      ];

      return DataRow(cells: getCells(cells, index));
    }).toList();

List<DataCell> getCells(List<dynamic> cells, dynamic index) {
  List<DataCell> cellslist = cells
      .map((cell) => DataCell(Text(
            cell,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          )))
      .toList();

  cellslist.add(DataCell(Row(
    children: [
      historydata[index].statusicon,
      Text(
        historydata[index].statusorder,
        style: TextStyle(
            color: historydata[index].color, fontWeight: FontWeight.w700),
      )
    ],
  )));

  cellslist.add(DataCell(Text(
    historydata[index].action,
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
  )));
  return cellslist;
}

List<String> columnHeadings = [
  'ID',
  'Time & Date',
  'Customer Name',
  'Location',
  'Amount',
  'Satatus Order',
  'Action'
];

List<DataColumn> getColumns() => List<DataColumn>.generate(
    columnHeadings.length,
    (index) => DataColumn(
            label: Text(
          columnHeadings[index],
          style: TextStyle(color: Colors.black45),
        )));

Widget TopItemRow() {
  return DataTable(columns: getColumns(), rows: getRows());
}
