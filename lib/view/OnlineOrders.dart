import 'package:flutter/material.dart';
import 'package:flutter_deepgreenstudio_assignment/model/OnlineItem.dart';
import 'package:flutter_deepgreenstudio_assignment/model/topitemmodel.dart';

class OnlineOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 574,
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
          OnlineOrderRow()
        ],
      ),
    );
  }
}

List<OnlineItem> onlineorderdata = [
  OnlineItem(
      idandtime: '#A0223\n12:20 AM|22/07/2022',
      amount: '#23',
      username: 'Apon Islam',
      staus: 'New Order',
      color: Colors.blue),
  OnlineItem(
      idandtime: '#A0223\n12:20 AM|22/07/2022',
      amount: '#160',
      username: 'Amirul Islam',
      staus: 'Pending',
      color: Colors.red),
  OnlineItem(
      idandtime: '#A0223\n12:20 AM|22/07/2022',
      amount: '#150',
      username: 'Zawad Ahmed',
      staus: 'Pending',
      color: Colors.red),
  OnlineItem(
      idandtime: '#A0223\n12:20 AM|22/07/2022',
      amount: '#23',
      username: 'Amirul Islam',
      staus: 'Pending',
      color: Colors.red),
  OnlineItem(
      idandtime: '#A0223\n12:20 AM|22/07/2022',
      amount: '#23',
      username: 'Amirul Islam',
      staus: 'Delivered',
      color: Colors.green),
  OnlineItem(
      idandtime: '#A0223\n12:20 AM|22/07/2022',
      amount: '#23',
      username: 'Amirul Islam',
      staus: 'Delivered',
      color: Colors.green)
];

// TextStyle topitemtextStyle =
//     TextStyle(fontSize: 20, fontWeight: FontWeight.w700);

List<DataRow> getRows() => onlineorderdata.asMap().entries.map((entry) {
      final onlineorder = entry.value;
      final index = entry.key;
      final cells = [
        onlineorder.amount,
        onlineorder.username,
      ];
      List<String> partString = onlineorder.idandtime.split('\n');

      Text idandtime = Text.rich(
        TextSpan(
            text: '${partString[0]}\n',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            children: <TextSpan>[
              TextSpan(
                text: partString[1],
                style: TextStyle(color: Colors.black45),
              )
            ]),
      );
      Text status = Text(
        onlineorder.staus,
        style: TextStyle(color: onlineorder.color, fontWeight: FontWeight.w700),
      );

      return DataRow(cells: getCells(idandtime, cells, status));
    }).toList();

List<DataCell> getCells(idandtime, List<dynamic> cells, dynamic status) {
  List<DataCell> firstpart = [DataCell(idandtime)];
  List<DataCell> cellslist = cells
      .map((cell) => DataCell(Text(cell,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700))))
      .toList();
  cellslist.add(DataCell(status));
  firstpart.addAll(cellslist);
  return firstpart;
}

List<String> columnHeadings = [
  'ID&time',
  'Amount',
  'User Name',
  'Status',
];

List<DataColumn> getColumns() => List<DataColumn>.generate(
    columnHeadings.length,
    (index) => DataColumn(
        label: Text(columnHeadings[index],
            style: TextStyle(color: Colors.black45))));

Widget OnlineOrderRow() {
  return DataTable(
    columns: getColumns(),
    rows: getRows(),
    dataRowHeight: 60,
    columnSpacing: 10,
  );
}
