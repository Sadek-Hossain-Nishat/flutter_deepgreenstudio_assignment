import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Order History',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black)),
        SizedBox(
          width: 610,
        ),
        Row(
          children: [
            Container(
              // width: MediaQuery.of(context).size.width * 0.24,
              // height: MediaQuery.of(context).size.height * 0.1,
              padding: EdgeInsets.only(top: 10),
              width: 320,
              height: 85,
              child: ListView(children: [
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: 'Search here',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.sort_outlined),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(8))),
                )
              ]),
            ),
          ],
        )
      ],
    );
  }
}
