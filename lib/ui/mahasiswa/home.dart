import 'package:flutter/material.dart';
import 'package:sipara/constant.dart';
import 'package:sipara/components/custom_button.dart';
import 'package:sipara/components/bottom_navigation.dart';

class HomePPDSPage extends StatelessWidget {
  const HomePPDSPage({Key? key}) : super(key: key);
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
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Selamat datang, dr. Angga !',
                        style: TextStyle(
                            fontSize: 16,
                            color: blackColor,
                            fontWeight: FontWeight.w500)),
                    Ink(
                      decoration: const ShapeDecoration(
                        color: primaryColor,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.notifications_outlined),
                        color: whiteColor,
                        onPressed: () {},
                      ),
                    ),
                  ]),
              Padding(
                  padding: EdgeInsets.only(
                      top: 40), //apply padding to some sides only
                  child: Card(
                    color: primaryColor,
                    child: InkWell(
                        child: SizedBox(
                            height: 100,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Text(
                                            'Buat laporan pasien sekarang',
                                            style: TextStyle(
                                                color: whiteColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ))),
                                  Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Ink(
                                        decoration: const ShapeDecoration(
                                          color: whiteColor,
                                          shape: OvalBorder(),
                                        ),
                                        child: IconButton(
                                          icon:
                                              const Icon(Icons.arrow_right_alt),
                                          color: primaryColor,
                                          iconSize: 30,
                                          onPressed: () {},
                                        ),
                                      )),
                                ]))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: 50), //apply padding to some sides only
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Laporan Aktif',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: primaryColor,
                              fontWeight: FontWeight.w400),
                        ),
                        onPressed: () {},
                        child: const Text('Lihat Semua'),
                      ),
                    ],
                  )),
              Container(
                child: Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text("Belum ada laporan yang diajukan",
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Image(
                        image: AssetImage('asset/images/empty.png'),
                      )
                    ])),
              )
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Action to be performed when the button is pressed
          },
          child: Icon(Icons.add),
          backgroundColor: primaryColor,
          shape: CircleBorder(),
          foregroundColor: Colors.white,
        ),
        bottomNavigationBar:
            BottomNav() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
