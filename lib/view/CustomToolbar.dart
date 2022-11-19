import 'package:flutter/material.dart';

class CustomToolbar extends StatelessWidget {
  const CustomToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
              // left: MediaQuery.of(context).size.width * 0.022,
              // top: MediaQuery.of(context).size.height * 0.025),
              left: 25,
              top: 10),
          child: Container(
              // height: MediaQuery.of(context).size.height * 0.09,
              // width: MediaQuery.of(context).size.width * 0.035,

              height: 85,
              width: 50,
              child: ListView(
                children: [
                  Text(
                    'Klio',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              )),
        ),
        SizedBox(
          // width: MediaQuery.of(context).size.width * 0.037,
          width: 30,
        ),
        Padding(
          padding: EdgeInsets.only(
              // left: MediaQuery.of(context).size.width * 0.010,
              // top: MediaQuery.of(context).size.height * 0.025,
              top: 10,
              left: 10),
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.15,
            // width: MediaQuery.of(context).size.width * 0.16,
            //color: Colors.blue,
            height: 85,
            width: 200,
            child: ListView(
              children: [
                Text(
                  'Welcome,Amirul',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black),
                ),
                Container(
                  child: Text('12:14 AM | 22 July'),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          // width: MediaQuery.of(context).size.width * 0.24,
          width: 260,
        ),
        Container(
          // width: MediaQuery.of(context).size.width * 0.24,
          // height: MediaQuery.of(context).size.height * 0.1,
          padding: EdgeInsets.only(top: 10),
          width: 350,
          height: 85,
          child: ListView(children: [
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  hintText: 'Search here',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8))),
            )
          ]),
        ),
        SizedBox(
          //width: MediaQuery.of(context).size.width * 0.02,
          width: 20,
        ),
        Container(
          // width: MediaQuery.of(context).size.width * 0.23,
          // height: MediaQuery.of(context).size.height * 0.095,
          width: 230,
          height: 85,

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mode_night,
                    color: Colors.orange,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sort,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.browser_updated,
                    color: Colors.orangeAccent,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
