import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sipara/locator.dart';
import 'package:sipara/constant.dart';
import 'package:sipara/ui/general/profile.dart';
import 'package:sipara/ui/general/listLaporan.dart';
import 'package:sipara/ui/guest/login.dart';
import 'package:sipara/ui/dosen/home.dart';
import 'package:sipara/ui/mahasiswa/home.dart';
import 'package:sipara/ui/dosen/detail_ppds.dart';
import 'package:sipara/ui/general/laporanDetail.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIPARA',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        useMaterial3: true,
        fontFamily: 'DMSans',
        primaryColor: primaryColor,
      ),
      onGenerateRoute: (settings) => RouteGenerator().generateRoute(settings),
    );
  }
}

class RouteGenerator {
  static const String routeError = "/error";
  static const String routeProfile = "/profile";
  static const String routeLogin = "/login";
  static const String routeTask = "/task";
  static const String routeTaskEdit = "/task/edit";
  static const String routeHomeDosen = "/dosen/home";
  static const String routeHomePPDS = "/ppds/home";
  static const String routeListLaporan = "/list-laporan";
  static const String routeDetailPPDS = "/dosen/detail-ppds";
  static const String routeReportStatus = "/report-status";

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeProfile:
        return _buildRoute(ProfilePage());
      case routeProfile:
        return _buildRoute(LoginPage());
      case routeHomeDosen:
        return _buildRoute(HomeDosenPage());
      case routeHomePPDS:
        return _buildRoute(HomePPDSPage());
      case routeListLaporan:
        return _buildRoute(ListLaporanPage());
      case routeDetailPPDS:
        return _buildRoute(DetailPPDSPage());
      case routeReportStatus:
        return _buildRoute(ReportDetailPage());
      default:
        return _buildRoute(LoginPage());
    }
  }

  Route _buildRoute(Widget widget) {
    return PageRouteBuilder(pageBuilder: (ctx, _, __) => widget);
  }
}
