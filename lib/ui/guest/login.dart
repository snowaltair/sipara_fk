import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sipara/constant.dart';
import 'package:sipara/components/custom_button.dart';
import 'package:sipara/components/custom_text_field.dart';
import 'package:sipara/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';
import 'package:sipara/locator.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_view';
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  LoginViewModel model = locator<LoginViewModel>();
  late final LoginViewModel _model;
  late final BuildContext _context;

  static const List<Tab> loginTabs = <Tab>[
    Tab(text: 'PPDS Ruangan'),
    Tab(text: 'DPJP'),
  ];
  late TabController tabController;
  final _formkey = GlobalKey<FormState>();

  onModelReady(model) {
    _model = model;
    _context = context;
    model.onModelReady();
  }

  onModelDestroy(model) {
    model.onModelDestroy();
  }

  @override
  void initState() {
    onModelReady(model);
    super.initState();
    tabController = TabController(
        vsync: this,
        length: loginTabs
            .length); // Change the length according to the number of tabs
  }

  @override
  void dispose() {
    onModelDestroy(model);
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return ChangeNotifierProvider<LoginViewModel>.value(
        value: model,
        child: Consumer<LoginViewModel>(
            builder: (context, model, child) => GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Scaffold(
                    appBar: AppBar(
                      // TRY THIS: Try changing the color here to a specific color (to
                      // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
                      // change color while the other colors stay the same.
                      backgroundColor: whiteColor,
                      // Here we take the value from the MyHomePage object that was created by
                      // the App.build method, and use it to set our appbar title.
                    ),
                    body: SafeArea(
                        child: Center(
                            child: Padding(
                      padding: EdgeInsets.only(left: 24, right: 24, top: 48),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('SIPARA',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 24)),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10), //apply padding to some sides only
                            child: Image(
                              image: AssetImage('asset/images/Logo.png'),
                              width: 150,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: TabBar(
                              indicatorColor: primaryColor,
                              controller: tabController,
                              tabs: loginTabs,
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: tabController,
                              children: [
                                SingleChildScrollView(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                      const SizedBox(height: 20),
                                      Text('NIM',
                                          style: GoogleFonts.dmSans(
                                            color: blackColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          )),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      CustomTextInputField(
                                          hintText: "Masukkan NIM Anda",
                                          keyboardType: TextInputType.number,
                                          editingController:
                                              _model.emailController,
                                          validator: _model.emailValidator),
                                      const SizedBox(height: 20),
                                      Text('Password',
                                          style: GoogleFonts.dmSans(
                                            color: blackColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          )),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      CustomTextInputField(
                                        hintText: "Masukkan Password Anda",
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        editingController:
                                            _model.passwordController,
                                        validator: _model.passwordValidator,
                                        enablePasswordField: true,
                                      )
                                    ])),
                                SingleChildScrollView(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                      const SizedBox(height: 20),
                                      Text('Email',
                                          style: GoogleFonts.dmSans(
                                            color: blackColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          )),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      CustomTextInputField(
                                          hintText: "Masukkan Email Anda",
                                          keyboardType: TextInputType.text,
                                          editingController:
                                              _model.emailController,
                                          validator: _model.emailValidator),
                                      const SizedBox(height: 20),
                                      Text('Password',
                                          style: GoogleFonts.dmSans(
                                            color: blackColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          )),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      CustomTextInputField(
                                        hintText: "Masukkan Password Anda",
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        editingController:
                                            _model.passwordController,
                                        validator: _model.passwordValidator,
                                        enablePasswordField: true,
                                      )
                                    ]))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          CustomButton(
                            text: 'Login',
                            buttonColor: primaryColor,
                            textColor: whiteColor,
                            onPressed: () => _formkey.currentState!.validate()
                                ? _model.login().then((value) {
                                    if (!value) return Text("error");
                                    Navigator.of(_context)
                                        .pushNamed('/dosen/home');
                                  })
                                : null,
                          ),
                        ],
                      ),
                    )) // This trailing comma makes auto-formatting nicer for build methods.
                        )))));
  }
}
