import 'package:flutter/material.dart';
import 'package:flutter_deepgreenstudio_assignment/model/uppertabdatamodel.dart';

class TabItem extends StatelessWidget {
  late String title;
  late String subtitle;
  int rating = 0;
  late Color cardcolor;
  Icon icon = Icon(null);

  // TabItem(title, subtitle, rating, cardcolor, Icon icon) {
  //   this.title = title;
  //   this.subtitle = subtitle;
  //   this.rating = rating;
  //   this.icon = icon;
  //   this.cardcolor = cardcolor;
  // }

  TabItem({required UpperTabDataModel upperTabDataModel}) {
    this.title = upperTabDataModel.title;
    this.subtitle = upperTabDataModel.subtitle;
    this.rating = upperTabDataModel.rating;
    this.icon = upperTabDataModel.icon;
    this.cardcolor = upperTabDataModel.cardColor;
  }

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 330,
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
              icon,
              Container(
                margin: EdgeInsets.only(left: 25),
                height: 100,
                width: 180,
                child: ListView(
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(subtitle)
                  ],
                ),
              ),
              rating == 3
                  ? Text('0$rating',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: cardcolor))
                  : Text(
                      '$rating',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: cardcolor),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
