import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 900,
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, pos) => menuItem()));
  }
}

Widget menuItem() {
  return Container(
    height: 100,
    width: 395,
    child: Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/foodlogo.jpg',
              height: 100,
              width: 100,
            ),
            Container(
              // margin: EdgeInsets.only(left: 5),
              height: 100,
              width: 150,
              child: ListView(
                children: [
                  Text(
                    'Chicken Masala',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.edit_outlined),
                      Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
            Text('#15.00',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.orange))
          ],
        ),
      ),
    ),
  );
}
