import 'package:flutter/material.dart';

class MenuHeading extends StatelessWidget {
  const MenuHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Menu Items',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black)),
        SizedBox(
          width: 850,
        ),
        Row(
          children: [
            Icon(
              Icons.add,
              color: Colors.orange,
            ),
            Text('Add Items',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.orange))
          ],
        )
      ],
    );
  }
}
