import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deepgreenstudio_assignment/view/CustomButton.dart';
import 'package:flutter_deepgreenstudio_assignment/view/CustomToolbar.dart';
import 'package:flutter_deepgreenstudio_assignment/view/MenuHeading.dart';
import 'package:flutter_deepgreenstudio_assignment/view/MenuItems.dart';
import 'package:flutter_deepgreenstudio_assignment/view/NavRailItems.dart';
import 'package:flutter_deepgreenstudio_assignment/view/OnlineOrders.dart';
import 'package:flutter_deepgreenstudio_assignment/view/OrderHistory.dart';
import 'package:flutter_deepgreenstudio_assignment/view/OrderHistoryItems.dart';
import 'package:flutter_deepgreenstudio_assignment/view/TopItems.dart';
import 'package:flutter_deepgreenstudio_assignment/view/UpperTabs.dart';

void main() => runApp(DevicePreview(builder: (context) => const MyApp()));
//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // custom toolbar
          CustomToolbar(),
          Row(
            children: [
              // nav rail
              NavRail(),
              //side bar
              Container(
                  height: 700,
                  width: 1130,
                  // padding: EdgeInsets.only(left: 5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // upper tabs
                        UpperTabs(),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            //data table
                            children: [TopItems(), OnlineOrders()],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //menus
                        MenuHeading(),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MenuItems(),
                              SizedBox(
                                width: 40,
                              ),
                              CustomButton()
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
// order history section
                        // Row(
                        //   children: [],
                        // ),
                        OrderHistory(),
                        SizedBox(
                          height: 5,
                        ),
                        OrderHistoryItems()
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
