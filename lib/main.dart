// import 'package:flutter/material.dart';
// import 'messaging_widget.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   final String appTitle = 'Firebase messaging';
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: appTitle,
//         home: MainPage(appTitle: appTitle),
//       );
// }
//
// class MainPage extends StatelessWidget {
//   final String appTitle;
//
//   const MainPage({this.appTitle});
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text(appTitle),
//         ),
//         body: MessagingWidget(),
//       );
// }

import 'package:flutter/material.dart';
import 'package:bhailu_mama_app/home-page.dart';
import 'package:flutter/services.dart';
import 'weather-page.dart';
import 'alert-page.dart';
import 'contact-page.dart';
import 'buisness-directory-page.dart';
import 'community-events-page.dart';
import 'covid-page.dart';
import 'maps-page.dart';
import 'meetings-agendas-page.dart';
import 'news-announcements-page.dart';
import 'rm-docs-bylaws-page.dart';
import 'service-requests-page.dart';
import 'springfield-connect-page.dart';
import 'water-meter-reading-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/alert': (context) => AlertPage(),
        '/contact': (context) => ContactPage(),
        '/weather': (context) => WeatherPage(),
        '/business': (context) => BusinessDirectoryPage(),
        '/community': (context) => CommunityEventsPage(),
        '/covid': (context) => CovidPage(),
        '/maps': (context) => MapsPage(),
        '/meetingAgenda': (context) => MeetingsAgendasPage(),
        '/news': (context) => NewsAnnouncementsPage(),
        '/rmDocs': (context) => RMDocsPage(),
        '/service': (context) => ServiceRequestsPage(),
        '/springfieldConnect': (context) => SpringfieldConnectPage(),
        '/water': (context) => WaterMeterPage(),
      },
    );
  }
}
