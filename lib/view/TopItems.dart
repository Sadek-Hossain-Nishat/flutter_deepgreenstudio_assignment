import 'package:flutter/material.dart';
import 'package:flutter_deepgreenstudio_assignment/model/topitemmodel.dart';

class TopItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 590,
      height: 250,
      child: ListView(
        padding: EdgeInsets.only(left: 10),
        children: [
          Text('Top Items',
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

List<DataRow> getRows() => topItemdata.asMap().entries.map((entry) {
      final topItemModel = entry.value;
      final index = entry.key;
      final cells = [
        topItemModel.name,
        topItemModel.order,
        topItemModel.price,
        topItemModel.soldprice,
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
  cellslist.add(DataCell(topItemdata[index].icon));
  return cellslist;
}

List<String> columnHeadings = [
  'Name',
  'Order',
  'Price',
  'Total Sold Price',
  ''
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
