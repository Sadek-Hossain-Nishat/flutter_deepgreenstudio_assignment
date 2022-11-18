import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deepgreenstudio_assignment/view/CustomToolbar.dart';
import 'package:flutter_deepgreenstudio_assignment/view/NavRailItems.dart';
import 'package:flutter_deepgreenstudio_assignment/view/OnlineOrders.dart';
import 'package:flutter_deepgreenstudio_assignment/view/TopItems.dart';
import 'package:flutter_deepgreenstudio_assignment/view/UpperTabs.dart';

void main() => runApp(DevicePreview(builder: (context) => const MyApp()));

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
          CustomToolbar(),
          Row(
            children: [
              NavRail(),
              Container(
                  height: 700,
                  width: 1130,
                  padding: EdgeInsets.only(left: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        UpperTabs(),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            // Container(
                            //   width: 565,
                            //   height: 250,
                            //   child: ListView(
                            //     padding: EdgeInsets.only(left: 10),
                            //     children: [
                            //       Text('Top Items',
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               fontSize: 25,
                            //               color: Colors.black)),
                            //       SizedBox(
                            //         height: 20,
                            //       ),
                            //       Row(
                            //         children: [
                            //           Text('Name'),
                            //           SizedBox(
                            //             width: 50,
                            //           ),
                            //           Text('Ordered'),
                            //           SizedBox(
                            //             width: 20,
                            //           ),
                            //           Text('Price'),
                            //           SizedBox(
                            //             width: 20,
                            //           ),
                            //           Text('Total Sold Price'),
                            //           SizedBox(
                            //             width: 20,
                            //           ),
                            //           Icon(null),
                            //         ],
                            //       )
                            //     ],
                            //   ),
                            // )

                            TopItems(),
                            OnlineOrders()
                          ],
                        )
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
