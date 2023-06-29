import 'package:flutter/material.dart';
import 'package:sipara/constant.dart';
import 'package:sipara/components/custom_button.dart';
import 'package:sipara/components/bottom_navigation.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
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
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
          ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('asset/images/profilepic.jpg'),
                radius: 100,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 20), //apply padding to some sides only
                child: Text(
                  'dr. Tatang',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: 20), //apply padding to some sides only
                child: Text(
                  'tatang@ub.ac.id',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 14,
                      color: greyColor),
                ),
              ),
              CustomButton(
                text: 'Keluar',
                buttonColor: blackColor,
                textColor: whiteColor,
                onPressed: () {
                  // Handle button press
                },
              ),
            ],
          ),
        )),
        bottomNavigationBar:
            BottomNav() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
