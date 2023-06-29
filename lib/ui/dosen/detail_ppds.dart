import 'package:flutter/material.dart';
import 'package:sipara/constant.dart';
import 'package:sipara/components/custom_button.dart';
import 'package:sipara/components/bottom_navigation.dart';
import 'package:sipara/components/list_card.dart';

class DetailPPDSPage extends StatelessWidget {
  const DetailPPDSPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: whiteColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Action to be performed when the back button is pressed
              // Typically, it involves navigating to the previous screen
            },
          ),
          title: Text(
            'Detail PPDS',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      top: 20), //apply padding to some sides only
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('asset/images/profilepic.jpg'),
                      radius: 50,
                    ),
                    SizedBox(width: 20),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Putri Amanda Syafira",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400)),
                          Text("195150200111025",
                              style: TextStyle(fontSize: 14, color: greyColor))
                        ])
                  ])),
              Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text('Riwayat Laporan',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20)))
            ],
          ),
        )));
  }
}
